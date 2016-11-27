clear all;clc;
str1='monkeys like eating bananas that are ripe and yellow';
str=horzcat(str1,' ');
l=length(str);
count=0;sl=[]; vl=[];lx=[];
for i=1:l
    if uint8(str(i))==32
        count=count+1;
        [sl]=[sl i]; % index of space in the sentence
    end
     if str(i)=='a'||  str(i)=='e' || str(i)=='i' ||  str(i)=='o'|| str(i)=='u'
        vl=[vl i];
     end 
        
      
   
end
nwords=count+1;
for i=1:count
    for k=1:length(vl)
     if k <length(vl) 
   if vl(k)<sl(i)&& vl(k+1)<sl(i)
      
         t=vl(k+1);
         disp(t)
   end
     end
    
   
   end       
   
   
    str(t)='*';
    disp(str)
end
ln=length(str)
strn=regexprep(str,'*','');
disp(strn)