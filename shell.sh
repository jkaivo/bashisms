suspend() {
	if [ x"$0" -ne x"${0#-}" ]; then
		#TODO: handle -f
		printf 'suspend: not suspending login shell\n' >&2
	else
		kill -STOP $$
	fi
}

logout() {
	if [ x"$0" -ne x"${0#-}" ]; then
	 	printf 'logout: use exit to leave non-login shell\n' >&2
	else
		exit "$@"
	fi
}

source() {
	. "$@"
}
