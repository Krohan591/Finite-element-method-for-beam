

%% Element parameter
E=1;
I=1;
C=E*I;
L=5;
n_element=5;


%%
n_node=n_element+1;
syms x


%% Elemental length
l_e=L/n_element;


%% Hermite shape function
N=0.25*[2 - 3*x + x^3,l_e*0.5*(1- x - x^2 + x^3),2 + 3*x - x^3,l_e*0.5*(-1- x + x^2 + x^3)];

%% Global stiffness matrix
K=zeros(2*n_node);
for i=1:n_element
 k_e=Stiffness_matrix(N);
 k_e=subs(k_e,l_e);
 k_e=subs(k_e,C);
 K=Assemeble_local(K,k_e,i);
end
%%


%%Force matrix
F=zeros(n_node*2,1);
for i=1:n_element
 fprintf('Uniform force on element %i\n',i);
 q=input('');
 f_1=uniele_force(N,q);
 f_1=subs(f_1,l_e);
 fprintf('Elemental force matrix for element %i\n',i);
 f_2=input('');
 f_2=Check_column_vector(f_2);
 f=f_1+f_2;
 
 j=2*i -1;
 F=Assemble_force(F,f,j);
end
%%

%%Displacement Matrix
fprintf('Displacement matrix for whole beam \n');
U=input('');
U=Check_column_vector(U);
%%

%%Boundry Condition
boundry_element=find(isnan(U)==0);
unknown_element=find(isnan(U)==1);
[K_b,F_b]=Boundry_condition(K,F,U,boundry_element,unknown_element);
%%

%%Solution and assembling final U
sol=K_b\ F_b;
for i=1:size(sol)
 U(unknown_element(i,1))=sol(i,1);
end
F_r=K*U - F;
%%


%%Calculating Moment, Shear force, and Deflection
deflection=[];
moment=[];
shear_force=[];
for i=1:n_element
    m=linspace(-1,1,40);
    for j=m
        v=-8*C*subs(diff(N,x,3),x,j)*U(2*i-1:2*(i+1))/l_e^3;
        z=4*C*subs(diff(N,x,2),x,j)*U(2*i-1:2*(i+1))/l_e^2;
        y=subs(N,x,j)*U(2*i-1:2*(i+1));
        deflection=[deflection,y];
        moment=[moment,z];
        shear_force=[shear_force,v];
    end
end
%%
x_distance=linspace(0,L,40*n_element);
tiledlayout(3,1)
%%Deflection Plot
nexttile;
plot(x_distance,deflection);
y_median=double(median(deflection));
y_max=double(max(deflection));
gap=10*(y_max-y_median);
xlabel('x'); ylabel('Deflection'); 
ylim([y_median-gap y_median+gap]);
grid on;
%%

%%Moment Plot
nexttile
plot(x_distance,moment);
xlabel('x'); ylabel('Moment'); 
grid on;
%%

%Shear Force Plot
nexttile
plot(x_distance,shear_force);
xlabel('x'); ylabel('Shear Force'); 
grid on;

%%End






