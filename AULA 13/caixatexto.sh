#!/bin/bash
#whiptail --title= serve para criar a caixa de mensagem
#--msbox(--yesno) é a caixa de mensagem
if (whiptail --title "Caixa teste sim/nao" --yes-button "Oi" --no-button "Sei lá" --yesno "Qual desses dois é o melhor?" 10 60) then
	echo "Você escolheu Sim. Saída com status $?."
else
	echo "Você escolheu Não. Saída com status $?."
fi
