#!/bin/sh
# Bateria de testes – escalonador Lottery

for N in 20 50 100 200 500
do
  echo ">> Executando $N processos (Lottery)…"
  ./teste_processos "$N" 100000 10000000 \
      > resultados_${N}.txt
done

echo "Lottery – bateria concluída!"


