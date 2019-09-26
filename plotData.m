function plotData(X, y)


pos=find(y==1);
ne=find(y==0);
hold on;
plot(X(pos,1),X(pos,2),'k+');
xlabel('fare');
plot(X(ne,1),X(ne,2),'ko','MarkerFaceColor','y');
ylabel('age');
hold off;









% =========================================================================



hold off;

end
