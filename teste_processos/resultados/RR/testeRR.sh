#!/bin/sh
# Bateria de testes – escalonador Round-Robin

for N in 50 100 150 200
do
  echo ">> Executando $N processos (RR)…"
  ./teste_processos "$N" 100000 10000000 \
      > resultados_${N}.txt
done

echo "RR – bateria concluída!"
