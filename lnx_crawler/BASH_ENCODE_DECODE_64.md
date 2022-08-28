# See version
>$ base64 --version

# Encoding text data
>$echo  'linuxhint.com' | base64

# Decoding text data
>$ echo 'bGludXhoaW50LmNvbQo=' | base64 --decode

# Encoding text file
>$ base64 sample.txt


# More samples with file
>$ base64 sample.txt > encodedData.txt
>$ cat encodedData.txt

# Decoding text file
>$ base64 -d encodedData.txt

# More samples with file
>$ base64 --decode encodedData.txt > originalData.txt
>$ cat originalData.txt


# sample with a script - encode_user_data.sh

#!/bin/bash
echo "Enter Some text to encode"
read text
etext=`echo -n $text | base64`
echo "Encoded text is : $etext"

# Run the script
> $ base encode_user_data.sh

# Checking user validity by decoding text - checkValidity.sh
#!/bin/bash
echo "Type your secret code"
read secret
otext=`echo 'Nzc3Nzk5Cg==' | base64 --decode`
if [ $secret == $otext ]; then
echo "You are authenticated"
else
echo "You are not authenticated"
fi

# Run the script
>$ bash  checkValidity.sh

