import re
d={}
d_number=1
fin=open('in.txt','r')
fout=open('out.txt','w')
for line in fin:
    if line=="\n":
        continue
    if re.match(r'^http://www.cc98.org/',line):
        print d_number
        d_number+=1; 
    else:
        #if line=='==================':
            #print 'wrong'
        if line not in d:
            d[line]={}
            d[line][d_number]=1
        else:
            if d_number in d[line]:
                d[line][d_number]+=1
            else:
                d[line][d_number]=1

for i in d:
    fout.write ("%s" %i)
    #print i,
    for j in d[i]:
        fout.write('%d ' %j)
        fout.write('%d ' %d[i][j])
        #print j,
        #print d[i][j]
    fout.write("\n")
fin.close()
fout.close()
