#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include "bench.h"

pthread_t tid_write; //kanoume global metavlhth to id tou nhmatos write giati to theloume sto arxeio db.c

long int count; //krataei ton ariumo tvn write kai read pou thelei o xrhsths

void _write_test(void *arg); //yparxei sto kiwi.c kai einai protypo

void _read_test(void *arg); //yparxei sto kiwi.c kai einai protypo

extern int wr; //to pernoume san global apo to db.c gia na boresoume na epitrecoume sto thread read na trexei kai na min perimenei

long int *arguments; //enas diktis pou krataei to orismata apo tin main gia na min xathoun argotera me to aplo argv

//gia na dexetai pollapla orismata sto create afou exoume ftiajei nhmata
struct data {
	long int countt;
	int rr;
};

void _random_key(char *key,int length) {
	int i;
	char salt[36]= "abcdefghijklmnopqrstuvwxyz0123456789";

	for (i = 0; i < length; i++)
		key[i] = salt[rand() % 36];
}

void _print_header(int count)
{
	double index_size = (double)((double)(KSIZE + 8 + 1) * count) / 1048576.0;
	double data_size = (double)((double)(VSIZE + 4) * count) / 1048576.0;

	printf("Keys:\t\t%d bytes each\n", 
			KSIZE);
	printf("Values: \t%d bytes each\n", 
			VSIZE);
	printf("Entries:\t%d\n", 
			count);
	printf("IndexSize:\t%.1f MB (estimated)\n",
			index_size);
	printf("DataSize:\t%.1f MB (estimated)\n",
			data_size);

	printf(LINE1);
}

void _print_environment()
{
	time_t now = time(NULL);

	printf("Date:\t\t%s", 
			(char*)ctime(&now));

	int num_cpus = 0;
	char cpu_type[256] = {0};
	char cache_size[256] = {0};

	FILE* cpuinfo = fopen("/proc/cpuinfo", "r");
	if (cpuinfo) {
		char line[1024] = {0};
		while (fgets(line, sizeof(line), cpuinfo) != NULL) {
			const char* sep = strchr(line, ':');
			if (sep == NULL || strlen(sep) < 10)
				continue;

			char key[1024] = {0};
			char val[1024] = {0};
			strncpy(key, line, sep-1-line);
			strncpy(val, sep+1, strlen(sep)-1);
			if (strcmp("model name", key) == 0) {
				num_cpus++;
				strcpy(cpu_type, val);
			}
			else if (strcmp("cache size", key) == 0)
				strncpy(cache_size, val + 1, strlen(val) - 1);	
		}

		fclose(cpuinfo);
		printf("CPU:\t\t%d * %s", 
				num_cpus, 
				cpu_type);

		printf("CPUCache:\t%s\n", 
				cache_size);
	}
}

int main(int argc,char** argv)
{
	struct data thread_args_write; //ginetai arxikopoihsh domvn gia na xreisimopoihthoun san orismata sthn dhmioyrgia tou nhmatos write
	struct data thread_args_read; //ginetai arxikopoihsh domvn gia na xreisimopoihthoun san orismata sthn dhmioyrgia tou nhmatos read

	pthread_t tid[100]; //arxikopoihsh enos pinaka pou krataei ta id tvn nhmatvn(protinete mexri 100 nhmata giati perissotera den exei noima, alla ginetai na boun kai parapanv nhmata)
	
	int r = 0; //to r einai ypeyuyno gia to an ua kalesei thn _random_key

	count = 0; //mia metavliti opou melodika tha krataei ton arithmo tvn aithsevn pou tha thetei o xristis

	int num_of_treads; //mia metavliti opou melodika tha krataei ton arithmo tvn nimatvn pou tha thetei o xristis

	long int percentage_write = 0; //mia metavliti opou melodika tha krataei to pososto tvn aithsevn pou afora ta writes pou tha thetei o xristis
	long int percentage_read = 0; //mia metavliti opou melodika tha krataei to pososto tvn aithsevn pou afora ta reads pou tha thetei o xristis

	arguments = (long int*) malloc((4)*sizeof(long int)); //desmeuume xoro gia enan dynamiko pinaka gia tin apothikeusi ton orismaton tis main

	srand(time(NULL));
	if (argc <= 3) {
		fprintf(stderr,"Usage: db-bench <write | read> <count> <random> OR\n <writeread> <count> <numOfReadThreads> <noRandomKeys | RandomKeys> OR\n <writeread> <count> <numOfReadThreads> <percentageWrite> <percentageRead> <noRandomKeys | RandomKeys>");
		exit(1);
	}

	if (strcmp(argv[argc-1],"RandomKeys") == 0) { //an sto telos tvn orismatvn ths main valoume RandomKeys tha trejei gia tyxaia kleidia
		r = 1;
	}
	else if(strcmp(argv[argc-1],"noRandomKeys") == 0) { //allivs an valoume noRandomKeys tha trexei me thn seira ta kleidia 0,1,2,...
		r = 0;
	}
	else {
		fprintf(stderr,"Usage: db-bench <write | read> <count> <random> OR\n <writeread> <count> <numOfReadThreads> <noRandomKeys | RandomKeys> OR\n <writeread> <count> <numOfReadThreads> <percentageWrite> <percentageRead> <noRandomKeys | RandomKeys>");
			exit(1);
	}
	
	if (strcmp(argv[1], "write") == 0) {
		wr = 0; //gia na apofigoume ton tautoxronismo
		if (argc > 4){
			fprintf(stderr,"Usage: db-bench <write | read > <count>\n");
			exit(1);
		}
		count = atoi(argv[2]); //to 3o orisma einai o arithmos ton etiseon
		_print_header(count);
		_print_environment();
		_write_test_1(count, r); //kalei tin apli arxiki synartisi(praktika trexei se 1 nhma)
		
		//vazoume stin 1h thesh tou pinaka me ta id tvn threads to torino thread(einai perissotero gia na iparxei mia oraia domi sta apotelesmata)
		tid[0] = pthread_self();
	} else if (strcmp(argv[1], "read") == 0) {
		wr = 0; //gia na apofigoume ton tautoxronismo
		if (argc > 4){
			fprintf(stderr,"Usage: db-bench <write | read > <count>\n");
			exit(1);
		}
		count = atoi(argv[2]); //to 3o orisma einai o arithmos ton etiseon
		_print_header(count);
		_print_environment();
		_read_test_1(count, r); //kalei tin apli arxiki synartisi(praktika trexei se 1 nhma)
		
		//vazoume stin 1h thesh tou pinaka me ta id tvn threads to torino thread(einai perissotero gia na iparxei mia oraia domi sta apotelesmata)
		tid[0] = pthread_self();
	} else if (strcmp(argv[1], "writeread") == 0) {
		if (atoi(argv[3]) == 0 || (argc != 5 && argc != 7)){
			fprintf(stderr,"Usage: db-bench <writeread> <count> <numOfReadThreads> <noRandomKeys | RandomKeys> OR\n <writeread> <count> <numOfReadThreads> <percentageWrite> <percentageRead> <noRandomKeys | RandomKeys>");
			exit(1);
		}else if (argc == 5){
			percentage_write = 100;
			percentage_read = 100;
		}else if (argc == 7){
			if (atoi(argv[4]) != 0 || atoi(argv[5]) != 0){
				percentage_write = atoi(argv[4]);
				percentage_read = atoi(argv[5]);
			} else {
				fprintf(stderr,"Usage: db-bench <writeread> <count> <numOfReadThreads> <noRandomKeys | RandomKeys> OR\n <writeread> <count> <numOfReadThreads> <percentageWrite> <percentageRead> <noRandomKeys | RandomKeys>");
				exit(1);
			}
		}else{
			fprintf(stderr,"Usage: db-bench <writeread> <count> <numOfReadThreads> <noRandomKeys | RandomKeys> OR\n <writeread> <count> <numOfReadThreads> <percentageWrite> <percentageRead> <noRandomKeys | RandomKeys>");
			exit(1);
		}
		
		num_of_treads = atoi(argv[3]); //to 4o orisma einai o arithmos ton nimaton
		//gia na apofigoume ton tautoxronismo se autin tin periptosi
		if(num_of_treads==1){
			wr=0;
		}

		thread_args_write.rr = r; //dinoume timh sto ena apo ta dyo orismata ths _write_test
		thread_args_read.rr = r; //dinoume timh sto ena apo ta dyo orismata ths _read_test

		//mia morfi gia to ti exei mesa tou to arguments = [write.r, write.count, read.r, read.count]
		arguments[0] = thread_args_write.rr;
		arguments[2] = thread_args_read.rr;

		count = atoi(argv[2]); //to 3o orisma einai o arithmos ton etiseon

		thread_args_write.countt = count*(percentage_write/(float)100); //dinoume timh sto allo orisma ths _write_test
		thread_args_read.countt = (count*(percentage_read/(float)100))/num_of_treads; //dinoume timh sto allo orisma ths _read_test
		arguments[1] = thread_args_write.countt;
		arguments[3] = thread_args_read.countt;
		
		_print_header(count);
		_print_environment();

		// WRITE
		if (num_of_treads == 1){
			//vazoume stin 2h thesh tou pinaka me ta id tvn threads to torino thread(einai perissotero gia na iparxei mia oraia domi sta apotelesmata)
			tid[0] = pthread_self();
			
			//an theloume ena nhma gia to read tha kalesei aytin tin sinartisi poy praktika einai les kai trexei se ena nhma
			_write_test_1(arguments[1], arguments[0]);
		}else{
			//dhmiourgoume to nhma tou write
			pthread_create(&tid[0], NULL, _write_test, (void *) &thread_args_write);
			tid_write = tid[0]; //apothhkeboume to id tou nhmatos write sthn global metavlhth tid_write
		}
		
		// READ
		for (int i = 0; i < num_of_treads; i++){
			pthread_create(&tid[i+1], NULL, _read_test, (void *) &thread_args_read); //dhmiourgoume to nhma tou read
		}
	}
	 else {
		fprintf(stderr,"Usage: db-bench <write | read> <count> <random> OR\n <writeread> <count> <numOfReadThreads> <noRandomKeys | RandomKeys> OR\n <writeread> <count> <numOfReadThreads> <percentageWrite> <percentageRead> <noRandomKeys | RandomKeys>");
		exit(1);
	}

	//kanoume print ton pinaka me ta id tvn threads pou exoume
	printf("__ArrayOfThreadsID: \n");
	printf("___WriteThread-1__%d\n", tid[0]);
	for (int i=1; i<num_of_treads+1 ; i++){
		printf("___ReadThread-%d___%d\n", i, tid[i]);
	}
	
	for(int i = 0; i<num_of_treads+1; i++){
		pthread_join(tid[i], NULL); //anasteletai to main thread mexri na teleivsh to nhma kai apodesmeuei tous porous
	}

	free (arguments); //afou xreisimopoihsame malloc eleutheronoume ton xoro pou desmeusame gia ta arguments

	return 1;
}