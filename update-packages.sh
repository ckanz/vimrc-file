echo "
██████╗  █████╗  ██████╗██╗  ██╗ █████╗  ██████╗ ███████╗    ██╗   ██╗██████╗ ██████╗  █████╗ ████████╗███████╗██████╗ 
██╔══██╗██╔══██╗██╔════╝██║ ██╔╝██╔══██╗██╔════╝ ██╔════╝    ██║   ██║██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝██╔══██╗
██████╔╝███████║██║     █████╔╝ ███████║██║  ███╗█████╗      ██║   ██║██████╔╝██║  ██║███████║   ██║   █████╗  ██████╔╝
██╔═══╝ ██╔══██║██║     ██╔═██╗ ██╔══██║██║   ██║██╔══╝      ██║   ██║██╔═══╝ ██║  ██║██╔══██║   ██║   ██╔══╝  ██╔══██╗
██║     ██║  ██║╚██████╗██║  ██╗██║  ██║╚██████╔╝███████╗    ╚██████╔╝██║     ██████╔╝██║  ██║   ██║   ███████╗██║  ██║
╚═╝     ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝     ╚═════╝ ╚═╝     ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═╝  ╚═╝
----------------------------------------------------------------------------------------------------------------------
"
date

echo "Updating Homebrew packages..."
brew ls
echo ""

brew update
brew upgrade
brew prune
brew cleanup
brew doctor

echo "Updating Get settings..."
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
curl -O https://raw.githubusercontent.com/GitAlias/gitalias/master/gitalias.txt ~/gitalias.txt

echo "Updating npm & packages..."
npm install -g npm@latest
npm outdated -g
npm update -g

echo "Done."
date
