# 4.11__biofilm
The original BioLinux [(Bicak)](https://doi.org/10.1038/npre.2011.6348.1) release was in the beforetimes of 2011. Although the default [site](https://github.com/Bio-Linux/) for obtaining BioLinux has failed, copies of it [persist](http://nebc.nerc.ac.uk/downloads/bio-linux-latest.iso).

Nevertheless, an updated version would be useful. Notwithstanding the efforts of platforms like [cloudbiolinux](http://cloudbiolinux.org), or our own efforts to provide a replacement live-USB level install, a simple alternative would be:
 * obtain a fresh and updated ubuntu install
 * progammatically obtain the software that you actually *need* for the course in question.

That is what we do here with ```biofilm__tourist.sh```.


### 1. get ubuntu
Why not? I've yet to see a reason you would not use ubuntu for this. It most frequently the instance for which packages are obtained and problems are solved. Obtain it at the [main ubuntu site](https://ubuntu.com/download/desktop) as an ISO ("image" or digital copy of an installation disk). 

### 2. run ubuntu
Possible use cases for running ubuntu (dependent on your resources and preferences):
  * using a small (>3GB, < 8GB) USB stick, or a DVD, [burn an install disk](https://ubuntu.com/download/iot/installation-media) and install ubuntu on a computer, or computer partition. 
  * using a large USB stick (>8GB, preferably >>8GB), [make a live-usb](https://ubuntu.com/tutorials/create-a-usb-stick-on-ubuntu) that you can use to boot from, giving you a ~parallel independent linux environment on most computers (i.e., boot your computer from your ubuntu USB). 
  * [run Ubuntu in an emulator](https://ubuntu.com/tutorials/how-to-run-ubuntu-desktop-on-a-virtual-machine-using-virtualbox) e.g. virtualbox (windows, linux, older macs) or UTM (newer macs). This allows you to run your virtual ubuntu computer in a window on your own computer, without rebooting etc. (though you'll need decent RAM & disk space). 

### 3. ```sudo install``` programs
Once in your Ubuntu environment, change your desktop background, and the run the ```biofilm__tourist.sh``` script. There are a number of programs selected in this install script for the purposes of the course at hand. Feel free to expand as necessary, but you'll need root access (```sudo``` or ```su```) to run the script.

### 4. feel free to feed back
Pull, merge, raise issues etc.
