import matplotlib.pyplot as plt

# Open the three files
file0 = open('teliko/timingAll1000.txt', 'r')
file1 = open('teliko/timingAll10000.txt', 'r')
file2 = open('teliko/timingAll100000.txt', 'r')
file3 = open('teliko/timingAll1000000.txt', 'r')

# Read the data from the files
data0 = file0.read().splitlines()
data1 = file1.read().splitlines()
data2 = file2.read().splitlines()
data4 = file3.read().splitlines()
data0int=[]
data1int=[]
data2int=[]
data4int=[]

#1000

flag=0
y=""
numberofthreads=4
count1=0
count=[16,38,70,132]
while numberofthreads!=0:
    for i in range (len(data0[count[count1]])):
        if data0[count[count1]][i].isdigit() or data0[count[count1]][i]=="." :
            y=y+data0[count[count1]][i]
    print(y)
    data0int.append(float(y)) 
    y=""
    numberofthreads=numberofthreads-1
    count1+=1



#10000
count1=0
flag=0
y=""
numberofthreads=4
while numberofthreads!=0:
    for i in range (len(data1[count[count1]])):
        if data1[count[count1]][i].isdigit() or data1[count[count1]][i]=="." :
            y=y+data1[count[count1]][i]
    print(y)
    data1int.append(float(y)) 
    y=""
    numberofthreads=numberofthreads-1
    count1+=1


#100000
count1=0
flag=0
y=""
numberofthreads=4
while numberofthreads!=0:
    for i in range (len(data2[count[count1]])):
        if data2[count[count1]][i].isdigit() or data2[count[count1]][i]=="." :
            y=y+data2[count[count1]][i]
    
    print(y)
    data2int.append(float(y)) 
    y=""
    numberofthreads=numberofthreads-1
    count1+=1

#1000000
count1=0
flag=0
y=""
numberofthreads=4
while numberofthreads!=0:
    for i in range (len(data4[count[count1]])):
        if data4[count[count1]][i].isdigit() or data4[count[count1]][i]=="." :
            y=y+data4[count[count1]][i]
    print(y)
    data4int.append(float(y)) 
    y=""
    numberofthreads=numberofthreads-1
    count1+=1    
    
    
# Close the files
file0.close()
file1.close()
file2.close()
file3.close()
x_0thread=[]
x_0thread.append(data0int[0])
x_0thread.append(data1int[0])
x_0thread.append(data2int[0])
x_0thread.append(data4int[0])
x_1thread=[]
x_1thread.append(data0int[1])
x_1thread.append(data1int[1])
x_1thread.append(data2int[1])
x_1thread.append(data4int[1])
print(x_1thread[0],x_1thread[1],x_1thread[2])
x_2thread=[]
x_2thread.append(data0int[2])
x_2thread.append(data1int[2])
x_2thread.append(data2int[2])
x_2thread.append(data4int[2])
x_4thread=[]
x_4thread.append(data0int[3])
x_4thread.append(data1int[3])
x_4thread.append(data2int[3])
x_4thread.append(data4int[3])
x=[1000,10000,100000,1000000]
plt.grid()
plt.semilogx(x,x_0thread,label="1 thread")
plt.semilogx(x,x_1thread,label="2 thread")
plt.semilogx(x,x_2thread,label="4 thread")
plt.semilogx(x,x_4thread,label="10 thread")
plt.title('writeread')
plt.xlabel('count')
plt.ylabel('time (sec)')
#plt.xticks(x)
#plt.yticks(x_0thread)
#plt.yticks(x_1thread)
#plt.yticks(x_2thread)
#plt.yticks(x_4thread)
plt.legend()
plt.savefig('myplot.svg')
plt.show()
