#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

int main() {
  char *flagcifrada = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
  int i, n=strlen(flagcifrada);
  char *flag = malloc(n);
  char inputkey[8+1];
  printf("Dime la clave para descifrar la flag: ");
  scanf("%8s",inputkey);
  printf("\nSi has escrito la clave correcta la flag sera...\n");
  for ( i=0; i<n; i++) {
    flag[i]=flagcifrada[i]^inputkey[i%8];
  }
  printf("Flag: %s \n",flag);
}
