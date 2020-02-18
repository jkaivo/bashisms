pushd() {
	_topush=$(pwd)
	cd "${1+"$@"}" && _DIRSTACK="$(printf '%s\n' ${_topush} ${_DIRSTACK})"
	unset _topush
}

popd() {
	if [ -z "${_DIRSTACK}" ]; then
		printf 'popd: directory stack is empty\n'
		return 1
	fi

	cd $(dirs | head -n1)
	pwd
	_DIRSTACK="$(dirs | tail +2)"
}

dirs() {
	printf '%s\n' ${_DIRSTACK}
}
