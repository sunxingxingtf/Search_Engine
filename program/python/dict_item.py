fin=open('out.txt','r')
fout=open('item_dict.txt','w')
count=0
d={}
for line in fin:
    if count%2==0:
        d[line]=count/2
    count+=1

for i in d:
    fout.write("%s" %i)
    fout.write("%d\n" %d[i])
fin.close()
fout.close()
