import re
fin=open('data.txt','r')
fout=open('url_dict.txt','w')
d=[]
d_number=1
for line in fin:
    if re.match(r'^http://www.cc98.org/',line):
        #fout.write('%d:' %d_number)
        fout.write('%s' %line)
        d_number+=1
fin.close()
fout.close()
