# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showcolorhints 'yes'
set __fish_git_prompt_color_branch cyan

function fish_prompt
	set_color yellow
  printf '%s' (whoami)
  set_color normal
  printf ' at '

  set_color magenta
  printf '%s' (hostname|cut -d . -f 1)
  set_color normal
  printf ' in '

  set_color $fish_color_cwd
  printf '%s ' (prompt_pwd)
  set_color normal
  printf '%s' (__fish_git_prompt)

  # Line 2
  echo
  if test $VIRTUAL_ENV
      printf "(%s) " (set_color blue)(basename $VIRTUAL_ENV)(set_color normal)
  end
  printf '↪  '
  set_color normal
end
