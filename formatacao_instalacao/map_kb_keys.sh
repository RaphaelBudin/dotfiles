// Caso esteja usando um teclado que não possua as teclas 
//		| ou \,
// o backslash \ pode ser obtido apertando
//		\ = AltrGR + 
// Será necessário o comando abaixo para realizar o seguinte mapeamento:
//		| = AltGR + 6
xmodmap -e "keycode 15 = 6 ampersand 6 asciicircum bar fiveeighths"

