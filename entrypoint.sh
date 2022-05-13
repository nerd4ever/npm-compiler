#!/bin/bash
set -e
# Project Dir
case $1 in
  daemon)
    echo ""
    echo ""
    echo "Configurando ambiente"
    # nvm install v14.15.5 
    # npm install -g @angular/cli@13.2.2 
    # npm config set user 0 
    # npm config set unsafe-perm 
    tail -f /var/log/lastlog
    exit 0;
  ;;
  *)
    exit 0
  ;;
esac