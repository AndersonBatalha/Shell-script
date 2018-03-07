# Dia 5 - YAD (Yet Another Dialog)
# Interfaces gráficas para o shell: yad, zenity, gtk ...

yad --list --radiolist --column Marque --column Usuário $(cut -f1 -d. /etc/passwd | sort | xargs -n1 echo FALSE) --height 500


IFS=\| read lx user <<< "$(yad --list --radiolist --column Marque --column Usuário $(cut -f1 -d. /etc/passwd | xargs -n1 echo FALSE) --height 500)"
echo $lx
echo $user


yad --list --radiolist --column Marque --column Usuário $(cut -f1 -d: /etc/passwd | sort | xargs -n1 echo FALSE --height 600 --width 1000 --image-gtk-ok --image-on-too)

yad --width 300 --entry --title "System Logout" --image=gnome-shutdown --button="_Switch User:2" --button="gtk-ok:0" --button="gtk-close:1" --text "Choose action:" --entry-text "Power Off" "Reboot" "Suspend" "Logout"

yad --form --title "Dicas-l de Rubens Queiroz"--text "Informe sua preferência sobre frutas" --image Frutas.jpg  --field "Escolha uma fruta:CB" --field Outra --field "Quantas você come?:NUM" --field "Arquivo:FL" --field "Como e chupo o caroço:CHK" "Pêra! Uva! Maçã! Manga" "" '1!10!1'
# --form permite utilizar uma opção --field que aceita modificadores, alguns exemplos:
	# CB: combobox
	# NUM: valores numéricos
	# FL: file (arquivo)
	# CHK: checkbox
# --text : exibe o título na barra superior da janela
# --image : permite inserir imagens
# O campo 'Quantas você come ?' é um spin box, deve ser especificado o valor mínimo, máximo e incremento
	# 1!10!1


ls -l | yad --text-info --fontname "mono 10" --width 600 --height 300
ls -l | yad --text-info --width 600 --height 300

# --fontname: define qual fonte será exibida na caixa de diálogo