fin=open('data.txt','r')
fout=open('title_dict.txt','w')
count=0
for line in fin:
    if count%5==0:
        #fout.write('%d' %(count/5+1))
        fout.write('%s' %line)
    count+=1
fin.close()
fout.close()
