#!/bin/bash

##################################
#				 #
#				 #
#    Script: Agendar Job         #
#				 #
#				 #
##################################

(/usr/bin/crontab -l; echo "00 12 * * * sh /opt/jobreport.sh") | crontab -
