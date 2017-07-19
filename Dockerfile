FROM ubuntu

# Get the SDL libs and other stuff (on my system, yes you need 
# these 3 redundant SDL libs to get it working out of the box)
RUN 		apt-get update \
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
	# Now try to run it 
		cd ../bin \
	&& \
	mkdir output \
	&& \
	touch run \
	&& \
	echo "./whycon /dev/video0 1" > run \
	&& \
	chmod +x run \

#ENTRYPOINT ./whycon-orig/bin/run