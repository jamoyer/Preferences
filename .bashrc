#"[username@host directory time]$ "
PS1="[\u@\h \W \t]\\$ "

#Deletes all but the most recent files in the directory. The number of newest files to keep is the first argument.
rmold ()
{
    (ls -t | head -n $1;ls) | sort | uniq -u | sed -e 's,.*,"&",g' | xargs --no-run-if-empty rm
}
