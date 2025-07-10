#!/bin/sh
# Bateria de testes – escalonador Loterry

echo ">> Executando 20 processos (LOT)…"
./teste_processos 20 10000 2000000 > resultados_20_LOT.txt

echo ">> Executando 50 processos (LOT)…"
./teste_processos 50 20000 4000000 > resultados_50_LOT.txt

echo ">> Executando 100 processos (LOT)…"
./teste_processos 100 100000 10000000 > resultados_100_LOT.txt

echo ">> Executando 200 processos (LOT)…"
./teste_processos 200 100000 20000000 > resultados_200_LOT.txt

echo "LOT – bateria concluída!"
