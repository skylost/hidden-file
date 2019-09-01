# Personal commands
#
rmlocaldup() {
  dir=$1
  for i in *(.); do
    size=$(stat -c "%s" $i)
    size2=$(stat -c "%s" $dir/$i 2>/dev/null || echo 0)
    test "$size" -eq "$size2" && echo "Removing duplicate: $size $size2 $i" && rm -f "$i"
  done
}

llr() {
  ls -la | sort -k 5 -n | ruby -ne 'a=$_.split;puts "#{a[4]} #{a[7..-1].join(" ")}" unless a[7].nil?'
}
px() {
  ps aux|grep $*
}

vi() {
  if [ -w $1 ]; then
    command vim $*
  elif [ ! -e $1 ] && [ -w $(dirname $1) ]; then
    command vim $*
  else
    command sudo -e $*
  fi
}

#ssh() {
#  if ip addr show br0 | grep "inet 172.28.10.195\|inet 10.166.136.53" >/dev/null; then
#    command ssh -F ~/.ssh/config.work $*
#  else
#    command ssh $*
#  fi
#}

docker-ip() {
  docker inspect --format '{{ .NetworkSettings.IPAddress }}' "$@"
}
