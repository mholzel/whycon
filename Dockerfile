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
FROM pcess/whycon:base

# Clone the necessary git repos into the current folder 
RUN 		git clone https://github.com/pcess/whycon.git \
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
		make 
