# coding=utf-8
import jieba
import re
import codecs
#打开文本，告诉解码器是unicode编码
input = codecs.open('data.txt', 'r', 'utf-8')
output1 = codecs.open('dataout_K-Gram.txt', 'w', 'utf-8')
output2 = codecs.open('dataout.txt', 'w', 'utf-8')
output3 = codecs.open('dataout_Search_Engine.txt', 'w', 'utf-8')
stopwords=open('stop_words.txt')
log = codecs.open('log.txt','w','utf-8')
stop = [line.strip().decode('utf-8') for line in stopwords.readlines() ]
flag = True #在读文本内容时是True
count = 1

for line in input:
    if(line == '==================\n' or line == '=================='):
        flag= not flag
    elif(flag == True ):
        while ('[em' in line):
            line=line[:line.index('[em')]+line[line.index('[em')+6:]
        while ('[right]' in line):
            line=line[:line.index('[right]')]+line[line.index('[right]')+7:]
        while ('[/right]' in line):
            line=line[:line.index('[/right]')]+line[line.index('[/right]')+8:]
        while ('[size' in line):
            line=line[:line.index('[size')]+line[line.index('[size')+8:]
        while ('[/size]' in line):
            line=line[:line.index('[/size]')]+line[line.index('[/size]')+7:]
        while ('[img' in line):
            line=line[:line.index('[img')]+line[line.index('[/img]')+6:]
        while ('[upload' in line):
            line=line[:line.index('[upload')]+line[line.index('[/upload]')+9:]
        while ('[url' in line):
            line=line[:line.index('[url')]+line[line.index('[/url]')+6:]
        while ('[quote]' in line):
            line=line[:line.index('[quote]')]+line[line.index('[quote]')+7:]
        while ('[/quote]' in line):
            line=line[:line.index('[/quote]')]+line[line.index('[/quote]')+8:]
        while ('[b]' in line):
            line=line[:line.index('[b]')]+line[line.index('[b]')+3:]
        while ('[/b]' in line):
            line=line[:line.index('[/b]')]+line[line.index('[/b]')+3:]
        seg_list = list(jieba.cut(line,cut_all=True))
        for tok in seg_list:    #Mode K-gram
            if (tok not in stop) and (tok !=u'\n' ):
                output1.write(tok)
                output1.write(u'\n')
        seg_list = list(jieba.cut(line,cut_all=False))
        for tok in seg_list:    #Mode normal
            if (tok not in stop) and (tok !=u'\n' ):
                output2.write(tok)
                output2.write(u'\n')
        seg_list = jieba.cut_for_search(line)
        for tok in seg_list:    #Mode Search_Engine
            if (tok not in stop) and (tok !=u'\n' ):
                output3.write(tok)
                output3.write(u'\n')
    elif(flag == False):
        output1.write(line)
        output2.write(line)
        output3.write(line)
        count = count + 1
        print count
        log.write(str(count))
        log.write(u'\n')
        log.write(line)
log.close()
input.close()
output1.close()
output2.close()
output3.close()
stopwords.close()
