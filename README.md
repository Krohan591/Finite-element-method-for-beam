# Finite-element-method-for-beam

This is complete matlab code from scratch to solve beam using finite element method, in mian file parameter for beam is to be entered along with number of element when code is run then in intput for each element we have to enter uniform force on it along with its points force and matrix and also have to give univerasal displacement matric in form if displacment known then its value else give NaN as input to that element in matrix for example this problem is solved in my code



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



