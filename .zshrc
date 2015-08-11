#changes shell to bash on startup
if [[ -n "$ZSH_NAME" ]]
 then
     export SHELL="/bin/bash"
     ARGV0="-bash" exec /bin/bash
 fi
