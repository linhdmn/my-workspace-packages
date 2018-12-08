install-packages-for-work-pc:
	sudo add-apt-repository ppa:graphics-drivers/ppa && \
	sudo apt update && sudo apt-get upgrade -y && \
	sudo apt install nvidia-390 -y && \
	sudo apt-get install -y gcc g++ make && \
	sudo apt install git -y && \
	sudo apt update && sudo apt-get upgrade -y && \
	sudo apt install tlp tlp-rdw -y && \
	sudo tlp start && \
	sudo apt install nginx -y && \
	sudo ufw app list && \
	sudo ufw allow 'Nginx HTTP' && \
	sudo ufw status && \
	sudo apt install curl -y && \
	curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - \
	sudo apt-get install -y nodejs && \
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && \
	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && \
	sudo apt-get update && \
	sudo apt updatesudo apt install docker-ce -y && \
	sudo apt install software-properties-common apt-transport-https wget -y && \
	wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add - && \
	sudo add-apt-repository \
	   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
	   $(lsb_release -cs) \
	   stable" && \
	sudo apt-get update && sudo apt-get install -y docker-ce && \
	wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add - &&\
	sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" && \
	sudo apt install -y code && \
	sudo apt update && \
	sudo apt install mysql-server -y && \
	sudo apt install mysql-workbench -y && \
	sudo add-apt-repository ppa:gnome-terminator && \
	sudo apt-get update && \
	sudo apt-get install terminator -y && \
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
	sudo dpkg -i google-chrome-stable_current_amd64.deb && \
	sudo apt install -y chromium-browser && \
	sudo apt-get install -y dconf-editor -y && \
	sudo add-apt-repository universe && \
	sudo apt install -y gnome-tweak-tool && \
	sudo apt-get install ibus-unikey -y && \
	ibus restart && \
	sudo apt install gpick -y && \
	sudo apt-get install -y zsh && \
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && \
	git config --global user.email "dnlinh@notasquare.vn"
	sudo apt-get install -y htop && \
	sudo apt-get install -y preload

install-packages-laptop:
	sudo apt-get install -y gcc g++ make && \
	sudo apt install git -y && \
	sudo apt update && sudo apt-get upgrade -y && \
	sudo apt install tlp tlp-rdw -y && \
	sudo tlp start && \
	sudo apt install nginx -y && \
	sudo ufw app list && \
	sudo ufw allow 'Nginx HTTP' && \
	sudo ufw status && \
	sudo apt install curl -y && \
	curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - \
	sudo apt-get install -y nodejs && \
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && \
	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && \
	sudo apt-get update && \
	sudo apt updatesudo apt install docker-ce -y && \
	sudo apt install software-properties-common apt-transport-https wget -y && \
	wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add - && \
	sudo add-apt-repository \
	   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
	   $(lsb_release -cs) \
	   stable" && \
	sudo apt-get update && sudo apt-get install -y docker-ce && \
	wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add - &&\
	sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" && \
	sudo apt install -y code && \
	sudo apt update && \
	sudo apt install mysql-server -y && \
	sudo apt install mysql-workbench -y && \
	sudo add-apt-repository ppa:gnome-terminator && \
	sudo apt-get update && \
	sudo apt-get install terminator -y && \
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
	sudo dpkg -i google-chrome-stable_current_amd64.deb && \
	sudo apt install -y chromium-browser && \
	sudo apt-get install -y dconf-editor -y && \
	sudo add-apt-repository universe && \
	sudo apt install -y gnome-tweak-tool && \
	sudo apt-get install ibus-unikey -y && \
	ibus restart && \
	sudo apt install gpick -y && \
	sudo apt-get install -y zsh && \
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && \
	git config --global user.email "dnlinh@notasquare.vn"
	sudo apt-get install -y htop && \
	sudo apt-get install -y preload
fix:
	sudo sed -i.bak -e '51d; 52d;' /etc/apt/sources.list
package-for-make:
	sudo apt-get install build essentials && \
	sudo apt-get install make && \
	sudo apt-get install autoconf automake && \
