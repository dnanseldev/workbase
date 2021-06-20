#list keys
  gpg --list-keys

#Generate new key
 gpg --full-generate-key

#Export key to a text format
 gpg --export --armor your_registered_email

#Export to a file
 gpg --export --armor --output file_name.gpg.pub your_registered_email
 ----------------------------------------------------------------------
#Delete keys
--If there is a private key
  gpg --delete-secrete-key key_id

--Delete public key
  gpg --delete-keys key_id
------------------------------------------------------------------------
#Encrypt files
  gpg --encrypt --armor -r your_key_emal file_name.txt

#Decrypting files
  gpg --decrypt encrypeted_file.asc > file_name.txt

