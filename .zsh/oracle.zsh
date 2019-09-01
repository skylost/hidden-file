# Oracle

export ORACLE_HOME="/usr/lib/oracle/11.2/client64"
export LD_LIBRARY_PATH="${ORACLE_HOME}/lib"
export TNS_ADMIN="${ORACLE_HOME}"

# ALIAS ORACLE
alias sqlplus="/usr/bin/rlwrap sqlplus64"
