#-*-coding:utf-8-*-
import jieba
import re
import codecs
import sys
import linecache
import heapq

BH=10000
stopwords=open('stop_words.txt')
stop = [line.strip().decode('utf-8') for line in stopwords.readlines() ]
stopwords.close()
index=open('item_dict.txt','r')
d={}
q=[]
while(index):
    line=index.readline()
    line=line.strip('\n')
    #print line
    number=index.readline()
    number=number.strip('\n')
    #print number
    if number=='':
        break
    d[line]=int(number)
print 'index is ok!'
def heapsort(score):
    s=[0]*6763
    heap = [0]*10
    for i in range(len(score)):
        s[i]=int(score[i]*1000000)
        s[i]=s[i]*BH+i+1
        heapq.heappushpop(heap,s[i])
    heap = heapq.nlargest(10,heap)
    ans_id=[0]*10
    ans_s=[0]*10
    for j in range(10):
        ans_id[j] = heap[j] % BH
        ans_s[j] = heap[j] / BH
    return ans_id,ans_s
def process(query,choice):
    #seg_list = list(jieba.cut_for_search(query))
    q=[]
    seg_list=jieba.cut(query,cut_all=False)
    for tok in seg_list:    #Mode K-gram
        if tok not in stop:
            print tok
            if tok.encode('utf-8') in d:
                q.append(d[tok.encode('utf-8')])
    if choice<='2':
        result=[0]*6763
    else:
        result=[1]*6763
    for l in q:
        print l
        temp=[]
	if choice=='1':
	    filename='OkapiBM25result/result'+str(l/1000)+'.txt'
	elif choice=='2':
	    filename='NormWeight/NormWeightMatrix'+str(l/1000)+'.txt'
	elif choice=='3':
	    filename='DSresult/result'+str(l/1000)+'.txt'
	elif choice=='4':
	    filename='JMSresult/result'+str(l/1000)+'.txt'
	else:
	    filename='Boolean/matrixB'+str(l/1000)+'.txt'
        
        #print filename,l%1000+1
        answer=linecache.getline(filename,l%1000+1)
        for x in answer.split():
            x=float(x)
            temp.append(x)
	if choice<='2':
	    result = map(lambda x,y:x + y,result,temp)
	else:
	    result = map(lambda x,y:x * y,result,temp)
	linecache.clearcache()
    #print 'lenth',len(temp)
    index.close()
    ans,sc=heapsort(result)
    title=[]
    url=[]
    for i in range(10):
		if sc[i]!=0:
			title.append(linecache.getline('title_dict.txt',ans[i]).strip('\n'))
			url.append(linecache.getline('url_dict.txt',ans[i]).strip('\n'))
		else:
			break
    return title,url
    
