#include <stdio.h>
#include <string.h>
#include <stdlib.h>     /* srand, rand */
#include <time.h>
 
typedef struct {
  int id;
  char name[30];
  float peso;
  float altura;
  int arma;
  char img[30];
} personaje;
 
typedef struct {
  int id;
  char name[30];
  int power;
} arma;
 
const int CANT=10;
int jug1,jug2;
 
void mezcla_arreglo_nombres(personaje per_ori[], personaje per_des[], int tamanio){
    bool usado[tamanio];
    int index;
    for (int i=0; i < tamanio; i++){
      usado[i] = false;
    }
    for (int i=0; i < tamanio; i++){
      do{
        index = (rand() % CANT);
        /*printf("\n%d",index);*/
      }
      while (usado[index]);
      strcpy(per_des[i].name,per_ori[index].name);
      usado[index]=true;
    }
}
 
void mezcla_arreglo_armas(arma armas_ord[],arma armas_des[], int tamanio){
    bool usado[tamanio];
    int index;
    for (int i=0; i < tamanio; i++){
      usado[i] = false;
    }
    for (int i=0; i < tamanio; i++){
      do{
        index = (rand() % CANT);
      }
      while (usado[index]);
      strcpy(armas_des[i].name,armas_ord[index].name);
      armas_des[i].power=armas_ord[index].power;
      armas_des[i].id=armas_ord[index].id;
      usado[index]=true;
    }
}
 
void personajes_aleatoreos(personaje personajes[],int tamanio){
  for (int i=0; i <= tamanio; i++){
    personajes[i].peso=(rand() % 50)+250;
    personajes[i].altura=(rand() % 150)+100;
    personajes[i].arma=(rand() % 10);
  }
}
 
void muestra_personajes(personaje personajes[],int tamanio, arma armas_des[]){
  int id_arma;
  for (int y=0; y < tamanio; y++){
    id_arma = personajes[y].arma;
    printf("\nNombre Personaje %d: %s ",y,personajes[y].name);
    printf("\nArma Personaje %d: %s",y,armas_des[id_arma].name);
    printf("\nPotencia arma %d: %d",y,armas_des[id_arma].power);
    printf("\nPeso Personaje %d: %f",y,personajes[y].peso);
    printf("\nAltura Personaje %d: %f",y,personajes[y].altura);
    printf("\n");
  }
 
}
 
void elegir_personaje(){
  do{
    printf("\n\n===================\n");
    printf("Jugador 1\nIngrese nro de personaje:");
    scanf("%d",&jug1);
  }
  while(jug1 < 0 || jug1 > 9);
 
  do{
    printf("\n===================\n");
    printf("Jugador 2\nIngrese nro de personaje:");
    scanf("%d",&jug2);
    if (jug1 == jug2){
      printf("\n\nIngrese nro de personaje distinto al jugador 1");
    }
  }
  while(jug2 < 0 || jug2 > 9 || jug1 == jug2);
}
 
void calcular_ganador(personaje per[], arma arm[]){
 
 
int punto1=0;
int punto2=0;
 
 if(arm[jug1].power > arm[jug2].power){
                     punto1++;}
    else {punto2++;}
 
 if(per[jug1].peso > per[jug2].peso){
    punto1++;}
 
    else {punto2++;}
 
 if (per[jug1].altura > per[jug2].altura){
    punto1++;}
   
    else {punto2++;}
     if (punto1 > punto2){
         
    printf("Victoria: Jugador 1");}
           
    else { printf("Victoria: Jugador 2");}
   
}
 
 
int main(){
  personaje personajes[CANT];
  personaje per_des[CANT];
 
  //ver variables mezcladas
  bool debug = true;
    //esta funcion sirve para mejorar random, se usa la hora del sistema, x eso se incluye la libreria time.h
  srand(time(NULL));
 
  //defino el personajes y sus caracteristicas
  //defino una rreglo con los nombres de los personajes y otro para mezclar esos nombres
  arma armas[CANT];
  arma armas_des[CANT];
 
  //asigno nombres
  strcpy(personajes[0].name,"Fenrir");
  strcpy(personajes[1].name,"Helheim");
  strcpy(personajes[2].name,"Winter");
  strcpy(personajes[3].name,"Abbath");
  strcpy(personajes[4].name,"Varg");
  strcpy(personajes[5].name,"Sindri");
  strcpy(personajes[6].name,"Freija");
  strcpy(personajes[7].name,"Thor");
  strcpy(personajes[8].name,"Tyr");
  strcpy(personajes[9].name,"Valkiria");
 
  // LLENA ARREGLO DE AR.nameMAS
  char stint[12];
  for (int z=0; z < CANT; z++){
    armas[z].id = z;
    armas[z].power = (rand() % 100);
 
    strcpy(armas[z].name,"Arma ");
    sprintf(stint,"%d",z);
    strcat(armas[z].name, stint);
 
  }
 
  //mezclo el arreglo utilizando la funcion que se define debajo
  mezcla_arreglo_nombres(personajes,per_des,CANT);
  mezcla_arreglo_armas(armas,armas_des,CANT);
 
 
  personajes_aleatoreos(per_des,CANT);
  muestra_personajes(per_des,CANT,armas_des);
  elegir_personaje();
 
  calcular_ganador(per_des, armas_des);
  return 0;
}
 
//definir ganador//
