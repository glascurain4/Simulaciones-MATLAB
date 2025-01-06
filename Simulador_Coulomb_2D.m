% Inicializar variables para almacenar las cargas y vectores de posición
cargas = [];
vectores = [];

% Solicitar al usuario el número de cargas a evaluar
n = input('Ingrese el número de cargas a evaluar: \n');

% Solicitar al usuario los datos de la carga principal (q1)
disp('Ingrese los datos de la carga principal (q1)')
q_prueba = input('Magnitud de la carga (múltiplos de q): \n ');
posicion_prueba = [input('Coordenada en x: \n')];
posicion_prueba  = [posicion_prueba , input('Coordenada en y: \n')];

% Almacenar el vector de posición de la carga principal
vectores = [vectores; posicion_prueba];

% Solicitar al usuario los datos de las cargas restantes (q2, q3, ..., qn)
for i = (1:n-1)
   disp(['Ingrese los datos de la carga q' num2str(i+1)])
   cargas = [cargas, input('Magnitud de la carga: \n')];
   posi = [input('Coordenada en x: \n')];
   posi = [posi, input('Coordenada en y: \n')];
   vectores = [vectores; posi];
end

% Definir constante: permitividad del vacío (ε0)
epsilon_0 = 8.854187817e-12; % F/m

% Inicializar variable para almacenar la fuerza total sobre la carga de prueba
fuerza_total = [0, 0];

% Calcular la fuerza total sobre la carga de prueba debido a todas las cargas
for i = 1:n-1
    % Calcular el vector separación entre la carga de prueba y la carga i
    r = posicion_prueba - vectores(i,:);
    
    % Calcular la magnitud del vector separación
    R = norm(r);
    
    % Calcular la fuerza de Coulomb sobre la carga de prueba debido a la carga i
    fuerza = (cargas(i) * q_prueba / (4 * pi * epsilon_0)) * (r / R^2);
    
    % Sumar la fuerza a la fuerza total
    fuerza_total = fuerza_total + fuerza;
end

% Mostrar la fuerza total sobre la carga de prueba
disp(['La fuerza total sobre la carga de prueba es: ', num2str(fuerza_total)]);