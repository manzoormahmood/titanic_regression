data=xlsread('train_edit.csv');
%survived,pclass,sex,age,sibsp,parch,fare,embarked
for i=1:891
    if isnan(data(i,4))
        data(i,4)=0;
    end
end
m1=round(mean(data(:,4)));
for i=1:891
    if (data(i,4)==0)
        data(i,4)=m1;
    end
end
%classify age into proper groups
for i=1:891
    if (data(i,4)<=11)
        data(i,4)=0;
    elseif (data(i,4)>11 && data(i,4)<=18)
            data(i,4)=1;
     elseif (data(i,4)>18 && data(i,4)<=22)
            data(i,4)=2;
     elseif (data(i,4)>22 && data(i,4)<=27)
            data(i,4)=3;
     elseif (data(i,4)>27 && data(i,4)<=33)
            data(i,4)=4;
     elseif (data(i,4)>33 && data(i,4)<=40)
            data(i,4)=5;
     elseif (data(i,4)>40 && data(i,4)<=66)
            data(i,4)=6;
     elseif (data(i,4)>66 )
            data(i,4)=7;
    end
end
%classification of fares
for i=1:891
    if (data(i,7)<=7.91)
        data(i,7)=0;
    elseif (data(i,7)>7.91 && data(i,7)<=14.454)
            data(i,7)=1;
     elseif (data(i,7)>14.454 && data(i,7)<=31)
            data(i,7)=2;
     elseif (data(i,7)>31 && data(i,7)<=99)
            data(i,7)=3;
     elseif (data(i,7)>99 && data(i,7)<=250)
            data(i,7)=4;
     elseif (data(i,7)>250)
            data(i,7)=5;
    end
end
