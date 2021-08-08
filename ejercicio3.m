%% Hecho por: Andres Felipe Arevalo Moreno
%% Comunicacion de Datos
%% EJERCICIO
T=0.0003;
t=[-0.4:T:0.4];
x=603.*sin((5.*pi)*t); %%Ecuacion fundamental
plot(t, x, '-r');
grid;
grid minor;
hold on
%% Armonica #1
a= (2412/pi)*((1/3)*sin(15*pi*t))
plot(t,a, '-b')
hold on
%% Armonica #2
b= (2412/pi)*((1/5)*sin(25*pi*t))
plot(t,b, '-y')
hold on
%% Armonica #3
c= (2412/pi)*((1/7)*sin(35*pi*t))
plot(t,c, 'g')
hold on

%% Serie de Furier
%%Nivel de furier las 10 armonicas
f=(2412/pi)*(sin(5*pi*t)+ ((1/3)*sin((15*pi)*t))+ ((1/5)*sin((25*pi)*t))+ ((1/7)*sin((35*pi)*t))+ ((1/9)*sin((45*pi)*t))+ ((1/11)*sin((55*pi)*t))+ ((1/13)*sin((65*pi)*t))+ ((1/15)*sin((75*pi)*t))+ ((1/17)*sin((85*pi)*t))+ ((1/19)*sin((95*pi)*t))+ ((1/21)*sin((105*pi)*t)))
plot(t,f,'-k'); %sera nuestra funcion, 12 sera un valor absoluto
xlabel('Periodo (T)');
ylabel('Voltaje (V)');
title('Señal Fundamental y Armonicas');
legend('Fundamental','Armonica#1','Armonica#2','Armonica#3','Serie de Furier');