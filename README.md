# PSEINT---Juego_del_Ahorcado
1. Inicialización de variables

- Se define una lista de 23 palabras posibles para adivinar.
- Solo se permiten 6 errores antes de perder .antes de perder.

2. Carga de palabras

palabras[1] <- "Argentina";
palabras[23] <- "Venezuela";
- Aquí se guardan nombres de países como posibles palabras a adivinar.

3. Partes del cuerpo para el ahorcado

cabeza <- ' ';
cuerpo <- ' ';
mano_izquierda <- ' ';
mano_derecha <- ' ';
pie_izquierdo <- ' ';
pie_derecho <- ' ';
- Se inicializa el dibujo del ahorcado. Cada error va añadiendo una parte del cuerpo.

4. Selección aleatoria de palabras y preparación del juego

- Se elige una palabra al azar de la lista.
- Se crea un arreglo casillasque representa la palabra con guiones bajos, uno por cada letra (como los espacios en blanco que hay que adivinar).

5. Bucle principal del juego

(Repetir)
- Se repite hasta que el jugador pierda (6 errores) o gane (acierte todas las letras) .

6. Proceso en cada turno

    a. Mostrar progreso

- Escribir "Oportunidades restantes"
- Escribir casillas[i]
    b. Leer letra

- Leer letra;
    c. Comparar con cada letra de la palabra

- Si letra coincide con alguna letra de la palabra:
    casillas[i] <- letra
    aciertos++
- Sino:
    turnos++
    Agregar parte del cuerpo

7. Dibujo del ahorcado

- Conforme aumenta turnos, se dibujan partes del cuerpo:

    1 -> cabeza = 'O'
    2 -> cuerpo = '+'
    3 -> mano_derecha = '/'
    4 -> mano_izquierda = '\'
    5 -> pie_derecho = '/'
    6 -> pie_izquierdo = '\'

8. Final del juego

- Si aciertos = n Entonces
    Escribir "Felicidades, has ganado."
- Sino
    Escribir "Has perdido."

(Al terminar, se revela la palabra secreta.)


¿Qué hace especial este algoritmo?
Usa un arreglo para mostrar el progreso.

Hace comparación sin importar mayúsculas/minúsculas .

Dibuja al ahorcado de forma progresiva.
