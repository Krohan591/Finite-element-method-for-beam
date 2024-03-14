function [f_e]=uniele_force(N,q)
 syms x l_e
 eq=transpose(N) * q *l_e/2;
 f_e=int(eq,x,-1,1);
end