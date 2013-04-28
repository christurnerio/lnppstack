#!/bin/bash

if [ -z "$1" ];then
  echo "Usage: lnpp-helpers <action> (update)"
  exit 1
fi

if [ "$1" = "update" ]; then

	read -rep $'LNPP helper scripts in /usr/local/bin will be updated. Are you sure you want to continue? [y]\n' -n 1
	if [[ ! $REPLY =~ ^[Yy]$ ]]
	then
	    exit 1
	fi

	sudo wget -N https://raw.github.com/gizmovation/lnppstack/master/helpers/site-create -O /usr/local/bin/site-create
	chmod 755 /usr/local/bin/site-create

	sudo wget -N https://raw.github.com/gizmovation/lnppstack/master/helpers/site-enable -O /usr/local/bin/site-enable
	chmod 755 /usr/local/bin/site-enable

	sudo wget -N https://raw.github.com/gizmovation/lnppstack/master/helpers/site-disable -O /usr/local/bin/site-disable
	chmod 755 /usr/local/bin/site-disable

	sudo wget -N https://raw.github.com/gizmovation/lnppstack/master/helpers/site-delete -O /usr/local/bin/site-delete
	chmod 755 /usr/local/bin/site-delete

	sudo wget -N https://raw.github.com/gizmovation/lnppstack/master/helpers/site-install-phpsecinfo -O /usr/local/bin/site-install-phpsecinfo
	chmod 755 /usr/local/bin/site-install-phpsecinfo

	sudo wget -N https://raw.github.com/gizmovation/lnppstack/master/helpers/lnpp-helpers-update -O /usr/local/bin/lnpp-helpers
	chmod 755 /usr/local/bin/lnpp-helpers

	echo "Done."
else
	echo "No action performed."
fi
