#!/bin/bash
curl -s http://conclave.thehackerconclave.es:42127/ | grep atob | sed s/".*atob(\""/""/ | sed s/"\".*"/""/ | base64 -d

# Si vemos el codigo fuente de la pagina la flag esta escondida como base64 en un string seguido por "atob", basta con obtener
# ese extracto con sed
