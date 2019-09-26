
data=xlsread('train_edit.csv');
data=data_optimise(data);

X=data(:,2:8);
y=data(:,1);

%% cost and dradient
[m, n] = size(X);
X = [ones(m , 1) X];
initial_theta =zeros(n + 1, 1);

 %% fminuc
 options = optimset('GradObj', 'on', 'MaxIter', 400);
 [theta, cost] =fminunc(@(t)(costFunction(t, X, y)), initial_theta, options);
 

%% Accuracy
data_test=xlsread('test_edit.csv');
data_test=data_optimise(data_test);
X=data_test(:,2:8);
[m, n] = size(X);
X = [ones(m, 1) X];
p = predict(theta, X);
n=892;
op=zeros(418,2);
for i=1:418
    op(i,1)=i+891;
    op(i,2)=p(i);
end

csvwrite('submit.csv',op);
