#!/bin/sh
# Bateria de testes – escalonador Round-Robin (RR)

echo ">> Executando 20 processos (RR)…"
./teste_processos 20 10000 2000000 > resultados_20_RR.txt

echo ">> Executando 50 processos (RR)…"
./teste_processos 50 20000 4000000 > resultados_50_RR.txt

echo ">> Executando 100 processos (RR)…"
./teste_processos 100 100000 10000000 > resultados_100_RR.txt

echo ">> Executando 200 processos (RR)…"
./teste_processos 200 100000 20000000 > resultados_200_RR.txt

echo "RR – bateria concluída!"
