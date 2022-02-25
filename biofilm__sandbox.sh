## biofilm__beta

	# host
	ics

	# user / pwd
	bioinform / bioinformatics
	


## do remember to insert and run Guest Additions CD Image (see devices in the VB menu while running...)
	
	# install emboss    (500mb)
	
	# install conda
	
	# install ncbi-blast+	(75mb)
	# install ncbi-blast+-legacy	(75mb)
	
	# install r.4
	
	# install java 
	sudo apt-get install default-jre (160 MB)
		
	# install jalview
	wget https://www.jalview.org/getdown/release/install4j/1.8/jalview-2_11_1_4-unix-java_8.sh

	# install mega
	
	# install artemis
	
	# install chrome, remove ffox
	
	# install libre_office
	
	# install wget, curl, nano, screen, vim, emacs, sl
	
	# install hmmer
	
	# install fastqc, multiqc
	
	# install artemis, act, etc.


##   B U I L D ===================================================================================

	# see https://askubuntu.com/questions/519/how-do-i-write-a-shell-script-to-install-a-list-of-applications for the real sauce

echo `
#! /usr/bin/bash


mkdir ~/bin ; cd ~/bin

sudo apt upate
sudo apt-get install emboss ncbi-blast+ ncbi-blast+-legacy r-base r-base-dev default-jre mega artemis hmmer


## conda yo
wget https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh ; chmod 777 ./Miniconda3-py39_4.10.3-Linux-x86_64.sh ; bash ./Miniconda3-py39_4.10.3-Linux-x86_64.sh &&

` > ~/Downloads/biospore_beta.sh



##   W O R K I N G   B E T A   =============================================================================

#!/usr/bin/bash


	# list format as below, simply add within brackets separated by whitespace
	LIST_OF_APPS="emboss ncbi-blast+ ncbi-blast+-legacy r-base r-base-dev default-jre mega artemis hmmer"

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
		# tell em you tell em
		echo see ~/Desktop/biofilm_install_manifest.txt for all programs attempted

	
## non-func
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



##   T E A C H   T H E M   T O   F I S H       ====================================================

	lab assignment where they build a similar install script for biolinux?

