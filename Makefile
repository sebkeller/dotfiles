all: install sync

install:
	@echo "--- Install Homebrew and applications ---"
	@if ! command -v brew > /dev/null; then\
		/bin/zsh -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)";\
	fi
	brew bundle --file install/Brewfile
	brew cleanup && brew doctor

	@echo "--- Instal Oh my zsh ---"
	@zsh -c "$$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

	@echo "--- Configure GPG ---"
	@echo "pinentry-program /usr/local/bin/pinentry-mac" > ~/.gnupg/gpg-agent.conf
	@killall gpg-agent

sync:
	@echo "--- Sync dotfiles ---"
	@for file in *; do\
		if [[ "$$file" == Makefile || "$$file" == install || "$$file" == README.md ]]; then\
		    continue;\
		fi;\
		echo "Syncing .$$file";\
		ln -sf $$(pwd)/"$$file" ~/."$$file";\
	done

.PHONY: install sync
