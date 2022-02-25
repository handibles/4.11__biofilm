#!/usr/bin/bash


	# to add more programs (by package name), add and format as below: simply add within brackets separated by whitespace
	LIST_OF_APPS="emboss ncbi-blast+ ncbi-blast+-legacy r-base r-base-dev default-jre artemis hmmer"

	echo -e "\n"
	echo "Note :: cannot automatically install MEGA-X (no ppa): head to https://megasoftware.net"
	echo -e "\n"
	
	echo going to install the following:

	for i in $LIST_OF_APPS ; 
		do echo $i ;
		done

	echo install additional programs manually, or edit the script \(see also input via read, see man read\)

	echo sounds good and continue? \(y\/n\)

	read CONSENT

	if [[ $CONSENT == 'y' ]] || [[ $CONSENT == 'Y' ]] 
	then

		echo "installing all that junk"
		sudo apt-get update
		sudo apt-get install $LIST_OF_APPS -y

		# tell em
		echo -e program\\tinstalled > ~/Desktop/biofilm_install_manifest.txt
		# tell em you told em
		echo see ~/Desktop/biofilm_install_manifest.txt for all programs attempted


		
	
	## non-func tracker for install status, replace with exit codes
	#	for i in $LIST_OF_APPS ;
	#		j=xargs $i
	#		echo $j ; 
	#		done
	#		
	#		do dpkg -s $i &> /dev/null
	#		if [ $? -eq 1]
	#		then 
	#			echo -e $i\\tsuccessful
	#		else
	#			echo -e $i\\tfailed
	#		fi 


	else 
		echo "aborting install carry-on. "
		if [ -d /home/$(ls /home/ | head -1) ]; then 
			echo -e program_name\\tinstall_success > /home/$(ls /home/ | head -1)/Desktop/biofilm_install_manifest.txt
			echo -e nothing\\tnothingatall >> /home/$(ls /home/ | head -1)/Desktop/biofilm_install_manifest.txt
		fi
		
	fi
