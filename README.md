# 4.11__biofilm
The original BioLinux [(Bicak)](https://doi.org/10.1038/npre.2011.6348.1) release was in the beforetimes of 2011. Although the default [site](https://github.com/Bio-Linux/) for obtaining BioLinux has failed, copies of it [persist](http://nebc.nerc.ac.uk/downloads/bio-linux-latest.iso).

Nevertheless, an updated version would be useful. Notwithstanding the efforts of platforms like [cloudbiolinux](http://cloudbiolinux.org), or our own efforts to provide a replacement live-USB level install, a simple alternative would be:
 * obtain a fresh and updated ubuntu install
 * progammatically obtain the software that you actually *need* for the course in question.

That is what we do here with ```biofilm__tourist.sh```.


### 1. get ubuntu
Why not? I've yet to see a reason you would not use ubuntu for this. It most frequently the instance for which packages are obtained and problems are solved. Obtain it at the [main ubuntu site](https://ubuntu.com/download/desktop) as an ISO ("image" or digital copy of an installation disk). 

### 2. run ubuntu
Make an installation disk (try a websearch), or a reusable live-usb (try a websearch) or run in e.g. virtualbox (try a websearch) or UTM if you've an apple computer. The latter two options should allow you to use an ubuntu-based system on most machines. 

### 3. ```sudo install``` programs
There are a number of programs selected in the install script for the purposes of the course at hand. Feel free to expand as necessary, but you'll need root access (```sudo``` or ```su```) to run the script.

### 4. feel free to feed back
Pull, merge, raise issues etc.
