function [K_b,F_b] = Boundry_condition(K,F,U,Boundry_element,unknown_element)
 n_=(size(unknown_element));
 n=n_(1);
 F_b=zeros(n,1);
 for j=1:n
         l=unknown_element(j);
         F_b(j)=F(l);
         for i=Boundry_element
             F_b(j)= F_b(j)- K(l,i)*U(i);
         end
 end
 for i=1:size(Boundry_element)
     r=Boundry_element(i)-(i-1);
     K(r,:)=[];
     K(:,r)=[];
 K_b=K;
 end
