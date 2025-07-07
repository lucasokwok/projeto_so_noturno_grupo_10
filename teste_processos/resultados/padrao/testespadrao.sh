#!/bin/sh
# Bateria de testes – escalonador PADRÃO (Minix original)

for N in 50 100 150 200
do
  echo ">> Executando $N processos (padrão)…"
  ./teste_processos "$N" 100000 10000000 \
      > resultados_${N}.txt
done

echo "PADRÃO – bateria concluída!"
