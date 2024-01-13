#!/bin/bash

install-homebrew() {
	if [[ "$OSTYPE" == "darwin"* ]]; then
		if ! command -v brew &> /dev/null; then
			echo "Homebrew is not installed. Installing it..."
			/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
		else
			echo "Homebrew is already installed. Version: $(brew --version)"
		fi
	else
		echo "Homebrew only required for mac."
	fi
}

install-ripgrep() {
	INSTALL_COMMAND=""

	if command -v rg &> /dev/null; then
		echo "ripgrep is already installed. Version: $(rg --version)"
	else
		if [[ "$OSTYPE" == "linux-gnu" ]]; then
			if command -v apt-get &> /dev/null; then
				INSTALL_COMMAND="sudo apt-get install ripgrep"
			elif command -v dnf &> /dev/null; then
				INSTALL_COMMAND="sudo dnf install ripgrep"
			fi
		elif [[ "$OSTYPE" == "darwin"* ]]; then
			INSTALL_COMMAND="brew install ripgrep"
		else
			echo "Unsupported operating system: $OSTYPE"
		fi

		if [ -n "$INSTALL_COMMAND" ]; then
			if ! command -v rg &> /dev/null; then
				echo "ripgrep is not installed. Installing it..."
				eval "$INSTALL_COMMAND"
			fi
		fi
	fi
}

install-node() {
	INSTALL_COMMAND=""

	if command -v node &> /dev/null; then
		echo "Node.js is already installed. Version: $(node --version)"
	else
		if [[ "$OSTYPE" == "linux-gnu" ]]; then
			if command -v apt-get &> /dev/null; then
				INSTALL_COMMAND="sudo apt-get install nodejs"
			elif command -v dnf &> /dev/null; then
				INSTALL_COMMAND="sudo dnf install nodejs"
			fi
		elif [[ "$OSTYPE" == "darwin"* ]]; then
			if command -v brew &> /dev/null; then
				INSTALL_COMMAND="brew install node"
			fi
		else
			echo "Unsupported operating system: $OSTYPE"
		fi

		if [ -n "$INSTALL_COMMAND" ]; then
			echo "Node.js is not installed. Installing it..."
			eval "$INSTALL_COMMAND"
		fi
	fi
}

create-projects-dir() {
	PROJECTS_FILE="$HOME/Projects"

	if [ -e "$PROJECTS_FILE" ]; then
		echo "Projects file already exists."
	else
		echo "Creating Projects file..."
		touch "$PROJECTS_FILE"
		echo "Projects file created at $projects_file."
	fi
}

create-dirs() {
	create-projects-dir
}

echo "Installing dependencies..."
install-homebrew # if on mac
install-ripgrep
install-node

create-dirs
