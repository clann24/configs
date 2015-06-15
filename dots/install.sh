


if [ "$(uname)" == "Darwin" ]; then
  # Enable tab completion
  brew install git bash-completion

  cp bash_profile ~/.bash_profile
  printf "\nif [ -f `brew --prefix`/etc/bash_completion ]; then\n  . `brew --prefix`/etc/bash_completion;\nfi\n" >> ~/xx
  source ~/.bash_profile
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  # Enable tab completion
  sudo apt-get install git bash-completion
  mv ~/.bashrc ~/.bashrc_backup  
  cp bash_profile ~/.bashrc
  source ~/.bashrc
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
  # Do something under Windows NT platform
  echo "nothing"
fi
