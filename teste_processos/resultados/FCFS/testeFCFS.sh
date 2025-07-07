#!/bin/sh
# Bateria de testes – escalonador FCFS / FIFO

for N in 50 100 150 200
do
  echo ">> Executando $N processos (FCFS)…"
  ./teste_processos "$N" 100000 10000000 \
      > resultados_${N}.txt
done

echo "FCFS – bateria concluída!"
