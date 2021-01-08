#include <stdio.h>
float a,b;
int suma(int n1, int n2);
int resta(int n1, int n2);
int multi(int n1, int n2);
float divi(int n1, int n2);
int cuadrado(int n1);
float inverso(int n1);
int cubo(int n1);
void menu();
int pedir_valor(char *mensaje);

int main(){
    int opc, n1, n2;
    do{
        do{
            menu();
            scanf("%d", &opc);
            if(opc < 1  || opc > 8){
                printf("Por favor introduzca una opción válida [1..8]\n");
            }
        }while (opc < 1 || opc > 8);
        switch (opc)
        {
        case 1:
            n1 = pedir_valor("Dame el primer número para sumar: ");
            n2 = pedir_valor("Dame el segundo número para sumar: ");
            printf("Resultado: %d \n\n", suma(n1, n2));
            break;
        case 2:
            n1 = pedir_valor("Dame el primer número para restar: ");
            n2 = pedir_valor("Dame el segundo número para restar: ");
            printf("Resultado: %d \n\n", resta(n1, n2));
            break;
        case 3:
            n1 = pedir_valor("Dame el primer número para multiplicar: ");
            n2 = pedir_valor("Dame el segundo número para multiplicar: ");
            printf("Resultado: %d \n\n", multi(n1, n2));
            break;
        case 4:
            n1 = pedir_valor("Dame el primer número para dividir: ");
            n2 = pedir_valor("Dame el segundo número para dividir: ");
            printf("Resultado: %f \n\n", divi(n1, n2));
            break;

        case 5:
            n1=pedir_valor("Dame un numero para regresarte el cuadrado del mismo: ");
            printf("Resultado: %d \n\n",cuadrado(n1));
            break;
        
        case 6:
            n1 = pedir_valor("Dame un numero para regresarte el inverso del mismo: ");
            printf("Resultado: %.3f \n\n",inverso(n1));
            break;

        case 7:
            n1=pedir_valor("Dame un numero para regresarte el cubo del mismo del mismo: ");
            printf("Resultado: %d \n\n",cubo(n1));
            break;
        case 8:
            printf("Gracias por utilizar la calculadora...");
            break;
        default:
            break;
        }
    }while(opc != 8);
    printf("Gracias por utilizar la calculadora\n");
}

int suma(int n1, int n2){
    return n1+n2;
}
int resta(int n1, int n2){
    return n1-n2;
}
int multi(int n1, int n2){
    return n1*n2;
}
float divi(int n1, int n2){
    return n1/(float)n2;
}

int cuadrado(int n1){
    return (n1)*(n1);
}

float inverso(int n1){
    return 1/(float)n1;
}

int cubo(int n1){
    
    return (n1)*((n1)*(n1));
}
void menu(){
    printf("Menú de Opciones\n");
    printf("[1] Suma\n");
    printf("[2] Resta\n");
    printf("[3] Multiplicación\n");
    printf("[4] División\n");
    printf("[5] Cuadrado\n");
    printf("[6] Inverso\n");
    printf("[7] Cubo\n");
    printf("[8] Salir\n");
    printf("Seleccione su opción[1-8]:");
}

int pedir_valor(char *mensaje){
    printf("%s", mensaje);
    int num;
    scanf("%d",&num);
    return num;
}