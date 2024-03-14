function [K] = Stiffness_matrix(N)
 syms l_e C x
 B=4* diff(N,x,2)/l_e^2;
 fun=(transpose(B))*C*B;
 K_1=vpa(GaussQuadrature(fun,-1,1,2),3);
 K=K_1*l_e/2;
end

