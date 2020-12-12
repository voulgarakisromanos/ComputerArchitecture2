function  plots(data1,data2,data3,length)
figure()
X = categorical({'libm','bzip','sjeng','mcf'});
X = reordercats(X,{'libm','bzip','sjeng','mcf'});
Y = data1;
hb=bar(X,Y);
if length==4
    my_colors=colormap(bone);
    hb(1).FaceColor = my_colors(10,:);
    hb(2).FaceColor = my_colors(25,:);
    hb(3).FaceColor = my_colors(40,:);
    hb(4).FaceColor = my_colors(55,:);
    legend('16 B','32 B','64 B','128 B')
elseif length==5
    my_colors=colormap(bone);
    hb(1).FaceColor = my_colors(10,:);
    hb(2).FaceColor = my_colors(22,:);
    hb(3).FaceColor = my_colors(34,:);
    hb(4).FaceColor = my_colors(46,:);
    hb(5).FaceColor = my_colors(58,:);
    legend('128 Kb','256 Kb','512 Kb','1024 Kb','2048 Kb')
elseif length==2
    my_colors=colormap(bone);
    hb(1).FaceColor = my_colors(12,:);
    hb(2).FaceColor = my_colors(46,:);
    legend('Directly-mapped','Two-way')
end
title(data3,'FontSize',16 ) 
ylabel(data2,'FontSize',16 )
grid on;
end

