#!/bin/sh
# Bateria de testes – escalonador FCFS

echo ">> Executando 20 processos (FCFS)…"
./teste_processos 20 10000 2000000 > resultados_20_FCFS.txt

echo ">> Executando 50 processos (FCFS)…"
./teste_processos 50 20000 4000000 > resultados_50_FCFS.txt

echo ">> Executando 100 processos (FCFS)…"
./teste_processos 100 100000 10000000 > resultados_100_FCFS.txt

echo ">> Executando 200 processos (FCFS)…"
./teste_processos 200 100000 20000000 > resultados_200_FCFS.txt

echo "FCFS – bateria concluída!"
