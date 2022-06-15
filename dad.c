// libs

#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<time.h>
#include<unistd.h>
#include<math.h>
#include <locale.h>

// cores:
#define RED         "\e[31m"    // 31 - RED
#define GREEN       "\e[32;1m"  // 32 - GREEN
#define CIANO       "\e[36;5m"  
#define YLW         "\e[33;1m"
#define BHGRN       "\e[92;5m"
#define BHRED       "\e[1;91m"
#define BHYLW       "\e[1;33m"
#define BHMAG       "\e[1;95m"
#define BHBLU       "\e[1;94m"
#define BHBLK       "\e[1;90m"
#define BHWHI       "\e[1;97m"
#define BHCYN       "\e[1;96m"
#define fundoPreto  "\e[40m"
#define RESET       "\x1B[0m"

// constants:
#define DEFAULT_POWER 10

// variaveis globais:
int input = 0;

// prototipos:
void listarPatos();
void menu();
int gerarId();

// método gerar patos: gera um único pato com um ID, com poderes aleatórios e de niveis diferentes
// método para verificar quantos patos existem: deve retornar o número de patos

// existem 4 tipos de patos: pato-selvagem, pato-vermelho, pato-borracha, pato-madeira
// cada pato possui um poder aleatório, que pode ser: voar, nadar, quack
// cada tipo de pato possui duas opções para o comportamento de voar: sendo 1 voando, ou 2 não-voando
// cada tipo de pato possui 3 opções para o comportamento de grasnar: sendo 1 grasnando, 2 guinchando, 3 mudo
// Essas opções serão definidas na criação do pato e não serão alteradas durante a execução

// tipo de pato é selecionado aleatoriamente
// cada pato possui um ID único 
// cada pato inicia com um poder de luta padrão(10), que é decrementado a cada iteração

// a partir da terceira iteração, patos começam a lutar em busca de hegemonia
// patos com poder de luta menor que 0 são eliminados
// se todos os patos restantes forem do mesmo tipo, vencem, caso contrário dois patos de diferentes tipos se enfrentam
// o pato com maior poder de luta vence e recebe metade dos pontos do adversário, que é eliminado

// menu:
/*  
1. Criar pato
2. Ver patos
3. Sair
*/

typedef struct ducks
{
    int id;
    int tipo;
    int powerFlyTipo;
    int powerSwimTipo;
    int powerQuackTipo;
}Pato;

Pato criarPato();

int gerarId()
{
    int id = rand() % 100;
    return id;
}

void listarPatos()
{
    Pato pato;
    FILE *arq;
    arq = fopen("patos.txt", "r");
    if (arq == NULL)
    {
        printf("Erro ao abrir arquivo\n");
        exit(1);
    }
    while (!feof(arq))
    {
        fscanf(arq, "%d %d %d %d %d", &pato.id, &pato.tipo, &pato.powerFlyTipo, &pato.powerSwimTipo, &pato.powerQuackTipo);
        printf("%d %d %d %d %d\n", pato.id, pato.tipo, pato.powerFlyTipo, pato.powerSwimTipo, pato.powerQuackTipo);
    }
    fclose(arq);
}

Pato criarPato()
{
    Pato pato;
    pato.id = gerarId();
    pato.tipo = rand() % 4;
    pato.powerFlyTipo = rand() % 2;
    pato.powerSwimTipo = rand() % 3;
    pato.powerQuackTipo = rand() % 3;
    return pato;
}


void menu()
{
    do{
        printf(GREEN"\t\t ╔════════════ MENU PRINCIPAL ════════════╗\n"RESET);
        printf(GREEN"\t\t ║"RESET BHCYN"\t 1 ==> Gerar Pato"RESET GREEN"\t\t  ║\n"RESET);
        printf(GREEN"\t\t ║"RESET BHYLW"\t 2 ==> Ver Patos"RESET GREEN"\t\t  ║\n"RESET);
        printf(GREEN"\t\t ║"RESET BHMAG"\t 3 ==> SAIR"RESET GREEN"\t\t\t  ║\n"RESET);
        printf(GREEN"\t\t ╚════════════════════════════════════════╝\n"RESET);
        printf(BHWHI"\n\t\tDigite a opção desejada: "RESET);
        fflush(stdin);
        scanf("%d", &input);
        system("clear");

        switch(input)
        {
            case 1:
                criarPato();
                break;
            case 2:
                //verPatos();
                break;
            case 3:
                printf(BHWHI"\n\t\tSaindo do programa...\n"RESET);
                exit(EXIT_SUCCESS);
            default:
                fflush(stdin);
                printf(RED"\n\t\t\tOPÇÃO INVÁLIDA!\n\n"RESET);
                getchar();
                fflush(stdin);
        }
    }
    while(input != 3);
    system("clear");
}


int main(void)
{   
    setlocale(LC_ALL, "Portuguese");
    menu();
    return (EXIT_SUCCESS);
}
