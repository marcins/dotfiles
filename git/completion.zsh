# Uses git's autocompletion for inner commands. Assumes an install of git's
# bash `git-completion` script at $completion below (this is where Homebrew
# tosses it, at least).
completion='$(brew --prefix)/share/zsh/site-functions/_git'

if test -f $completion
then
echo 'doing it'
  source $completion
fi
compdef g='git'

gf_completion='$(brew --prefix)/share/zsh/site-functions/git-flow-completion.zsh'
if test -f $gf_completion
then
  source $gf_completion
fi
