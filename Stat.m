Velback = ones(3,10);
maxer   = ones(3,10);
meaner  = ones(3,10);
maxz    = ones(3,10);
meanz   = ones(3,10);
timediff = ones(3,10);

for i =1:3
    for j=1:10

disp(i*10 -10 +j);
FILEdata=fopen(['Alldata',num2str(i),'-',num2str(j),'.log']);
data = fread(FILEdata,'float');
leng = 67;
starttime =2;
endtime = 30;
framelength = 50;
x= [data(starttime*framelength*leng+1:leng:endtime*framelength*leng); nan];
y = [data(starttime*framelength*leng+2:leng:endtime*framelength*leng); nan];
z = [data(starttime*framelength*leng+3:leng:endtime*framelength*leng); nan];
backtime = find(sqrt(x.^2+y.^2)<500, 1 );
backdistxy = norm([x(starttime * framelength)-x(backtime ),y(starttime * frame)-y(backtime)]) ./1000;
timediff(i,j) = backtime./framelength - starttime;
Velback(i,j) = backdistxy/timediff(i,j);
errorsxy =  ([x((backtime+framelength *5):(endtime * framelength- starttime*framelength),1)...
    ,y((backtime+framelength *5) :(endtime * framelength- starttime*framelength),1)]) ./1000;
errors = sqrt(errorsxy(:,1).^2 + errorsxy(:,2).^2 );
maxer(i,j) = max(errors);
meaner(i,j) = mean(errors);
errorsz = abs(z((backtime+framelength *5):(endtime * framelength- starttime*framelength),1) - 1500) ./1000;
maxz (i,j)=  max(errorsz);
meanz(i,j)= mean(errorsz);
fclose(FILEdata);
    end
end
 


mVelback = mean(Velback,2);
mmaxer   = mean(maxer,2);
mmeaner  = mean(meaner,2);
mmaxz    = mean(maxz,2);
mmeanz   = mean(meanz,2);
mtimediff = mean(timediff,2);