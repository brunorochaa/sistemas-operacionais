USAR_CORES=1

if test "$TERM" = "vt100"
then
	USAR_CORES=0
fi

if test $USAR_CORES -eq 1
then
	msg_colored $mensagem
else
	echo $mensagem
fi
