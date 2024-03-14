function [y] = Assemeble_local(K,k,i)
n=size(k); %n/2 will be no of degreee of freedom for each node
m=(i-1)*n(1)*0.5;
j=1+m;
for a=j:j+n(1)-1
 for b=j:j+n(1)-1
     K(a,b)=K(a,b)+k(a-m,b-m);
 end
end
 y=K;
end