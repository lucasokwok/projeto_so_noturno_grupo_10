#!/bin/sh
# Bateria de testes – escalonador padrao Minix

echo ">> Executando 20 processos (padrao)…"
./teste_processos 20 10000 2000000 > resultados_20_padrao.txt

echo ">> Executando 50 processos (padrao)…"
./teste_processos 50 20000 4000000 > resultados_50_padrao.txt

echo ">> Executando 100 processos (padrao)…"
./teste_processos 100 100000 10000000 > resultados_100_padrao.txt

echo ">> Executando 200 processos (padrao)…"
./teste_processos 200 100000 20000000 > resultados_200_padrao.txt

echo "padrao – bateria concluída!"
