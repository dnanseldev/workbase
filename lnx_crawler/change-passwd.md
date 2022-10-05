# At bootup press "E" key
# At linux line on ro point erase the rest of the line
# Add rw then
> linux...rw init=bin/bash
# then control-x

# Change password
> passwd user_name

# then reboot system
> exec /sbin/init