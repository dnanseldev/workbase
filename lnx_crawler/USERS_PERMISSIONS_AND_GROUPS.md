# Add User
 $ sudo adduser user_name

# Delete User
 $ sudo userdel user_name

# Change password from user_account
 $ sudo passwd user_name

# See User list
 $ sudo cat /etc/passwd

# Enter Login
 $ sudo login

# Get out Login
 $ logout

# Change a owner from a file or a folder
 $ chown newuser file_name.txt | chown -R newuser /folder_name

# ------------- Groups ---------------
# Add Groups
 $ sudo addgroup group_name

# Remove Group
 $ sudo delgroup group_name

# Include a User in a Group
 $ sudo adduser user_name group_name |
 $ sudo usermod -aG group_name user_name


# Remove a User from a Group
 $ sudo deluser username group_name

# Include User in Super User(sudo group)
 $ sudo adduser user_name sudo

# See group list
 $ cat /etc/group

# Change a group from a file or folder
 $ chown user[:group] file_name

# Change user and group from a file
 $ chown newuser:newgroup file_name

# Change just a group
 $ chown :newgroup file_name

# Obs: chown command accomplish similar function of chgrp when owner information is not provided.

# ---------------- Permissions -------------
# Obs: 3 types: Read, Wright and Execute - rwx
-->state has(r)(1) or not have(r-) (0)
# Number representation
-->r = 4
   w = 2
   x = 1

   Permissions calc
   r + w + x = 7
   r + w = 6
   r + x = 5
   r = 4
   w + x = 3


# Symbol meaning
-->
   Folder: d
   file:   -
# Hierachy
# --> Owner Group Rest/all(out of the group)
    Ex: -rw-rw-r-- --> owner: rw(6), group: rw(6), rest: r(4)

# Modifying permissions (chmod)
# Modifying owenership (chown)
# Modifying group (chgrp)

# Ex: All permissions to owner, 0 to group and 0 to all
 $ sudo chmod 700 foldername/ -R

# Execute shell script
> chmod a+x file_name.sh;

# Changing a folder or a file to a new group
 $ sudo chgrp group_name folder_name/ -R | sudo chgrp group_name file_name
