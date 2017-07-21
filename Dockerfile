########################################
########################################
#
# You should never need to call this 
# file. This file is the script used to 
# build the docker image. You 
# should never be calling this unless 
# you are the manager of that distro.
# 
########################################
########################################
FROM ubuntu

# Get the SDL libs and other stuff (on my system, yes you need 
# these 3 redundant SDL libs to get it working out of the box)
RUN 		apt-get update \
	&& \
 		apt-get upgrade -y \
	&& \
		apt-get install -y \
			libsdl1.2-dev \
			libsdl-ttf2.0-dev \
			libsdl2-ttf-dev \
			git \
			checkinstall \
			make \
			gcc \
	&& \
# Now clone the necessary git repos into the current folder 
		git clone https://github.com/pcess/whycon.git \
	&& \
# Build and install luvcview with checkinstall so that it is easily removable
		cd whycon/luvcview \
	&& \
		make \
	&& \
		checkinstall -y \
	&& \
# Build whycon
		cd ../whycon-orig/src/ \
	&& \
		make \
	&& \
# We don't need a lot of those libraries now. Let's remove them to lighten the container.
		apt-get remove -y \
			checkinstall \
			make \
			gcc \
	&& \
		apt-get autoremove -y \
	&& \
# For some reason, autoremove removes these. But we do actually need them
		apt-get install -y \
			libsdl1.2-dev \
			libsdl-ttf2.0-dev \
			libsdl2-ttf-dev \
			git

