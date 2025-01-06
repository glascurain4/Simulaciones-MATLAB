g = 9.81;
m = input("Ingrese la masa promedio de los minerales: \n");
E = input('Ingrese E (energía): \n');
q = input('Ingrese la carga de los minerales: \n');
t = 0:0.1:10;

h_y = -(g*t.^2)/2;
v_y = -g*t;
a_y = -g * ones(size(t));

p_x = (q*E*t.^2) / (2*m);
v_x = (q*E*t) / m;
a_x = (q*E) / m * ones(size(t));

figure;

subplot(3,1,1);
plot(t,h_y);
title('Altura vs Tiempo');
xlabel('Tiempo (s)');
ylabel('Altura (m)');
grid on;

subplot(3,1,2);
plot(t,v_y);
title('Velocidad vs Tiempo');
xlabel('Tiempo (s)');
ylabel('Velocidad (m/s)');
grid on;

subplot(3,1,3);
plot(t,a_y);
title('Aceleración vs Tiempo');
xlabel('Tiempo (s)');
ylabel('Aceleración (m/s^2)');
grid on;

figure;

subplot(3,1,1);
plot(t,p_x);
title('Trabajo vs Tiempo');
xlabel('Tiempo (s)');
ylabel('Trabajo (J)');
grid on;

subplot(3,1,2);
plot(t,v_x);
title('Velocidad en x vs Tiempo');
xlabel('Tiempo (s)');
ylabel('Velocidad en x (m/s)');
grid on;

subplot(3,1,3);
plot(t,a_x);
title('Aceleración en x vs Tiempo');
xlabel('Tiempo (s)');
ylabel('Aceleración en x (m/s^2)');
grid on;
