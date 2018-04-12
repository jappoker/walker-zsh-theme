# Modiefied from robbyrussell and inspired by jonathon.
# Apr 11, 2018 by Walker

# git

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"


local blue_op="%{$fg[blue]%}[%{$reset_color%}"
local blue_cp="%{$fg[blue]%}]%{$reset_color%}"
local top_tab="%{$fg[blue]%}╭──%{$reset_color%}"
local bottom_tab="%{$fg[blue]%}╰〢%{$reset_color%}"
local barline="%{$fg[blue]%}────%{$reset_color%}"
local hist_no="${blue_op}%{$fg[yellow]%}%h${blue_cp}"
local time_display="${blue_op}%{$fg[yellow]%}%t${blue_cp}"
local day_display="${blue_op}%{$fg[yellow]%}$(date +%a,%b%d)${blue_cp}"

if [ $USER = $DEFAULT_USER ]; then
		local user_host="${blue_op}%{$fg_bold[cyan]%}%n$(git_prompt_info)$(git_prompt_status)%{$reset_color%}${blue_cp}"
	else
		local user_host="${blue_op}%{$fg_bold[cyan]%}%n%{$fg[blue]%}@%{$fg_bold[green]%}%m:%l$(git_prompt_info)$(git_prompt_status)%{$reset_color%}${blue_cp}"
	fi


#local user_infoo="${blue_op}$(git_prompt_info)${blue_cp}"
local path_p="${blue_op}%{$fg_bold[cyan]%}%~%{$reset_color%}${blue_cp}"
local begcur="%(?,%{$fg_bold[green]%} ∷ %{$reset_color%},%{$fg_bold[red]%} ☋ %{$reset_color%})"



PROMPT="${top_tab}${time_display}${barline}${user_host}${barline}\
${hist_no}${barline}${day_display}\

${bottom_tab}${path_p}${begcur}"
