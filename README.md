# Finite-element-method-for-beam

MATLAB code from scratch to solve beam problems using the finite element method. In the main file, users input parameters related to the beam, including the number of elements. When the code is executed, users provide input for each element, specifying uniform forces, point forces, and matrices. Additionally, users has to  provide a universal displacement matrix. If the displacement value is known, it is entered; otherwise, NaN is used as the input, example problem is given below



![Screenshot 2024-03-13 025535](https://github.com/Krohan591/Finite-element-method-for-beam/assets/109597805/830c2339-1d47-46c3-8684-c8cd5fc55e8e)

<h4>Input Parameter:</h4>
E=1<br>
I=1<br>
L=5<br>
n_element=5  ## (5 element is taken to solve this problem)<br>
just for sake of simplicity is taken E and I is taken as 1<br>

<h4>Runtime parameter:</h4>

uniform force for element 1=0<br>
Elemental force matrix for element 1=[0;0;-1;0]

uniform force for element 2=0<br>
Elemental force matrix for element 2=[0;0;0;0]

uniform force for element 3=0<br>
Elemental force matrix for element 3=[0;0;0;0]

uniform force for element 4=-12<br>
Elemental force matrix for element 4=[0;0;0;0]

uniform force for element 5=-12<br>
Elemental force matrix for element 5=[0;0;0;0]

Displacement matrix for whole beam=[0;0;NaN;NaN;0;NaN;0;NaN;NaN;NaN;0;NaN]

Output will give Deflection, Shear force and Moment plot and all residual force and Displcement can be assesed by <b>F_r</b> and <b>U</b> matrix.


