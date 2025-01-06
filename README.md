# Simulaciones de Ley de Coulomb y Aplicaciones Físicas en MATLAB

Este repositorio contiene una colección de códigos en MATLAB diseñados para modelar y analizar fenómenos físicos relacionados con la Ley de Coulomb, el movimiento de partículas cargadas, y la Ley de Biot-Savart. Estas herramientas son ideales para estudiantes y profesionales que buscan resolver problemas físicos de manera eficiente a través de simulaciones numéricas.

---

## **1. Simulador de Fuerzas de Coulomb en 2D**

### Descripción
Este programa calcula la fuerza resultante sobre una carga de prueba debido a otras cargas distribuidas en un plano bidimensional. Los usuarios pueden definir la magnitud y posición de múltiples cargas.

### Características
- Introducción de datos interactiva: magnitud y posición de cargas.
- Cálculo de fuerzas individuales y su sumatoria vectorial.
- Presentación del resultado como vector en coordenadas cartesianas.

### Principios Aplicados
- **Ley de Coulomb**: \( F = k \frac{q_1 q_2}{r^2} \hat{r} \).
- **Superposición de fuerzas**: suma de vectores de fuerzas.
- Utilización de matrices para manipulación eficiente de datos en MATLAB.

---

## **2. Simulador de Campo Magnético (Ley de Biot-Savart)**

### Descripción
Este código implementa la Ley de Biot-Savart para calcular el campo magnético generado por un filamento conductor en un punto dado.

### Características
- Permite ingresar las coordenadas del filamento conductor y del punto de observación.
- Calcula el campo magnético vectorial (\( \vec{H} \)) y su magnitud.
- Usa herramientas de álgebra vectorial, como el producto cruzado, para obtener resultados precisos.

### Principios Aplicados
- **Ley de Biot-Savart**: \( \vec{B} = \frac{\mu_0 I}{4 \pi} \int \frac{\vec{dl} \times \hat{r}}{r^2} \).
- **Geometría vectorial** para calcular direcciones y magnitudes.

---

## **3. Simulación de Movimiento de Minerales Cargados**

### Descripción
Simula el movimiento de minerales cargados sometidos a fuerzas gravitacionales y eléctricas. Es una herramienta útil para comprender cómo los campos eléctricos afectan partículas cargadas en aplicaciones como la minería.

### Características
- Calcula posición, velocidad y aceleración en los ejes \(x\) e \(y\).
- Genera gráficos detallados del movimiento en ambas direcciones.
- Ayuda a visualizar cómo los campos eléctricos y gravitatorios influyen en el movimiento.

### Principios Aplicados
- **Cinemática clásica** para calcular posición, velocidad y aceleración.
- **Ley de Coulomb aplicada al movimiento**: \( F = qE \).
- Modelado de trayectorias parabólicas en componentes \(x\) e \(y\).

---

## **4. Determinación del Ángulo de Equilibrio en Esferas Cargadas**

### Descripción
Este código calcula el ángulo en el cual dos esferas con la misma carga suspendidas por cuerdas alcanzan el equilibrio entre fuerzas gravitatorias y electrostáticas.

### Características
- Método numérico para resolver ecuaciones no lineales.
- Visualización gráfica del equilibrio angular.
- Determina las condiciones precisas de equilibrio del sistema.

### Principios Aplicados
- **Ley de Coulomb** para fuerzas electrostáticas.
- **Equilibrio de fuerzas**: análisis de componentes gravitacionales y electrostáticos.
- Métodos numéricos en MATLAB para resolver ecuaciones implícitas.

---

## **Ejemplos de Uso**

### **Simulador de Fuerzas de Coulomb**

fuerza = (cargas(i) * q_prueba / (4 * pi * epsilon_0)) * (r / R^2);

### Simulador de Campo Magnético

H = (I / (4 * pi * R)) * (cosalfa2 - cosalfa1);

### Movimiento de Minerales Cargados

p_x = (q * E * t.^2) / (2 * m);

### Cálculo del Ángulo de Equilibrio

angulo = fzero(y, ed);

## Requisitos del Sistema

MATLAB R2020a o superior.

Conocimientos básicos de física y programación.

Cómo Usar los Programas

Descarga o clona este repositorio.

Abre MATLAB y selecciona el archivo que deseas ejecutar.

Sigue las instrucciones en la consola para ingresar datos.

Visualiza los resultados en la consola y/o gráficos generados
