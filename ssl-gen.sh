#!/bin/bash - 
#===============================================================================
#
#          FILE:  sslgen.sh
# 
#         USAGE:  sslgen.sh  
# 
#   DESCRIPTION:  generate ssl certs and apply them along with importing certs
#                 from other services such as ldaps and 
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR: Jamie Charlton, jamie.charlton@eleveo.com  
#       COMPANY: Zoom International, Franklin TN
#       CREATED: 11/4/2020
#      REVISION: 
#===============================================================================

while getopts ":hgscp" opt; do
  case ${opt} in
    h)
      echo
      echo sslgen.sh '('$(basename "$0")')'
      echo '|-------------------------------------------------------'
      echo '| -g'
      echo '|  generates ssl.conf, localhost.key and localhost .crt'
      echo '|  also puts them in the proper place in callrec/web/conf'
      echo '|-------------------------------------------------------'
      echo '| -s'
      echo '|  checks if there is an existing ssl.conf and will help'
      echo '|  modify it, if not it will walk through generating one'
      echo '|-------------------------------------------------------'
      echo '| -c'
      echo '|  checks for ssl.conf and generates a csr file for the'
      echo '|  server, if not it will walk through generating one'
      echo '|  and then generate the csr'
      echo '|-------------------------------------------------------'
      echo '| -p'
      echo '|   will prompt you with a list of different options for'
      echo '|   pulling certs such as ldaps, uccx, and cucm and then'
      echo '|   prompt for ip of server and pull them'
      echo '|-------------------------------------------------------'
      exit 0
    ;;
    g)
      echo "generate"
      genfull='true'
      sslgen='true'
    ;;
    s)
      sslgen='true'
      echo "sslconf"
    ;;
    c)
      csr='true'
      sslgen='true'
      echo "csr"
    ;;
    p)
      pullcert='true'
      echo "pullcert"
    ;;
    *)
      echo 'not a valid command,'
      echo 'Please check -h for further information and usage of this script'
      exit 0
    ;;
  esac

  ##generates ssl configuration file (ssl.conf)
  if [ sslgen -eq true]; then
    
  fi
done