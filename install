PREFIX="${PREFIX:-/usr/local}"
exe="${PREFIX}/bin/swallow"
man="${PREFIX}/share/man/man1/swallow.1"

# save for later
unset man

new_exe(){ [[ $exe && ${exe##*/} -nt $exe ]] ;}
new_man(){ [[ $man && doc/${man##*/} -nt $man ]] ;}

install(){
	new_exe && copy ${exe##*/} $exe
	new_man && copy doc/${man##*/} $man
}

uninstall(){
	[[ -x $exe ]] && remove $exe
	[[ -a $man ]] && remove $man
}

copy(){
	cp -rf $1 $2
	printf '%s\n' "installed to $2"
}

remove(){
	rm $1
	printf '%s\n' "uninstalled $1"
}

case $1 in
	u*) uninstall ;;
	'') install ;;
esac
