rc_modprobe()
{
	type modprobe >/dev/null 2>&1 || return 1
	modprobe -q "$@"
}
