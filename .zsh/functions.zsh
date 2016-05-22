# functions
#
llr() {
  ls -lha | sort -k 5 -n | ruby -ne 'a=$_.split;puts "#{a[4]} #{a[7..-1].join(" ")}" unless a[7].nil?'
}
px() {
  ps aux|grep $*
}
nt() {
  netstat -laputen
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
