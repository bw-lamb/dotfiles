autoload -Uz vcs_info

precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST

NEWLINE=$'\n'
PROMPT="%~ ${vcs_info_msg_0_}${NEWLINE}%n@%m $ "
