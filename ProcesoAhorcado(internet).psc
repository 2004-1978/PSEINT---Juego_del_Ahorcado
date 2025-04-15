Algoritmo ProcesoAhorcado
    PALABRAS_TAMANO <- 23;
    oportunidades <- 6;
    Dimension palabras[PALABRAS_TAMANO];
    palabras[1] <- "Argentina";
    palabras[2] <- "Belice";
    palabras[3] <- "Bolivia";
    palabras[4] <- "Brasil";
    palabras[5] <- "Canada";
    palabras[6] <- "Colombia";
    palabras[7] <- "Cuba";
    palabras[8] <- "Chile";
    palabras[9] <- "Ecuador";
    palabras[10] <- "El Salvador";
    palabras[11] <- "España";
    palabras[12] <- "Estados Unidos";
    palabras[13] <- "Guatemala";
    palabras[14] <- "Haiti";
    palabras[15] <- "Honduras";
    palabras[16] <- "Mexico";
    palabras[17] <- "Panama";
    palabras[18] <- "Paraguay";
    palabras[19] <- "Peru";
    palabras[20] <- "Puerto Rico";
    palabras[21] <- "Republica Dominicana";
    palabras[22] <- "Uruguay";
    palabras[23] <- "Venezuela";
    cabeza <- ' ';
    cuerpo <- ' ';
    mano_izquierda <- ' ';
    mano_derecha <- ' ';
    pie_izquierdo <- ' ';
    pie_derecho <- ' ';
    turnos <- 0;
    aciertos <- 0;
    palabra <- palabras[Azar(PALABRAS_TAMANO)+1];
    n <- Longitud(palabra);
    Dimension casillas(n);
    Para i<-1 Hasta n Con Paso 1 Hacer
        casillas[i] <- '_';
    FinPara
    Repetir
        Escribir "";
        Escribir "Oportunidades restantes: ", oportunidades-turnos;
        Para i<-1 Hasta n Con Paso 1 Hacer
            Escribir Sin Saltar " ", casillas[i];
        FinPara
        Escribir "";
        Escribir Sin Saltar "Escriba una letra: ";
        Leer letra;
        encontrado <- Falso;
        Para i<-1 Hasta n Con Paso 1 Hacer
            chr <- Subcadena(palabra, i, i);
            Si Mayusculas(letra)=Mayusculas(chr) Entonces
                encontrado <- Verdadero;
                Si casillas[i]='_' Entonces
                    casillas[i] <- chr;
                    aciertos <- aciertos+1;
                FinSi
            FinSi
        FinPara
        Si No encontrado Entonces
            turnos <- turnos+1;
            Escribir "Letra no encontrada.";
            Segun turnos Hacer
                1:
                    cabeza <- 'O';
                2:
                    cuerpo <- '+';
                3:
                    mano_derecha <- '/';
                4:
                    mano_izquierda <- '\';
                5:
                    pie_derecho <- '/';
                6:
                    pie_izquierdo <- '\';
            FinSegun
        FinSI
        Escribir "     ", cabeza," ";
        Escribir "    ", mano_derecha, cuerpo, mano_izquierda;
        Escribir "    ", pie_derecho," ", pie_izquierdo;
        Escribir "";
    Hasta Que turnos>=oportunidades O aciertos>=n;
    Si aciertos=n Entonces
        Escribir "Felicidades, has ganado.";
    Sino
        Escribir "Has perdido.";
    FinSi
    Escribir "La palabra secreta es: ", palabra;
FinAlgoritmo