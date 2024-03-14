function [y] = Assemble_force(F,f,i)
 j=size(f);
 
 for m=1:j(1)
     
     F(i+m-1,1)=F(i+m-1,1)+f(m,1);
     
 end
 y=F;
end