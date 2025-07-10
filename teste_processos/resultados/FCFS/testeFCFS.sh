#!/bin/sh
# Bateria de testes – escalonador FCFS

for N in 20 50 100 200 500
do
  echo ">> Executando $N processos (FCFS)…"
  ./teste_processos "$N" 100000 10000000 \
      > resultados_${N}.txt
done

echo "FCFS – bateria concluída!"


