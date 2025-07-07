#!/bin/sh
# Bateria de testes – escalonador Lottery

for N in 50 100 150 200
do
  echo ">> Executando $N processos (LOT)…"
  ./teste_processos "$N" 100000 10000000 \
      > resultados_${N}.txt
done

echo "LOTTERY – bateria concluída!"
