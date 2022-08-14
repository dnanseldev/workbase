# See version
$ curl --version

# Basic sintax
$ curl [OPTIONS][URL]
-->ex: $ curl testdomain.com

# Download file remotelly with param -O
$ curl -O http://testdomain.com/testfile.tar.gz

# Download a file with the name different from the original
$ curl -o newtestfile.tar.gz http://testdomain.com/testfile.tar.gz

# Resume a download interrupted
$ curl -C - -O  http://testdomain.com/testfile.tar.gz

# Download multiple files
$ curl -O http://testdomain.com/testfile.tar.gz -O http://mydomain.com/myfile.tar.gz

# Downlad multiple files from multiples urls
-->Must save a list in a file to be read it
$ xargs –n 1 curl -O < allUrls.txt

#------------------------HTTP Commands -----------------------------

# Get information from an especific site
$ curl -I www.testdomain.com

# Verbs Methods: GET, POST, UPDATE
-->GET 
   curl http://mydomain.com
-->POST
   curl –data “text=Hello” https://myDomain.com/firstPage.jsp
-->Using multiple verbs in request
   curl –data “text=Hello” https://myDomain.com/firstPage.jsp --next https://myDomain.com/displayResult.jsp
-->Altering user agent
  curl -I http://mydomain.com –-user-agent “My new Browser”

# Cookies
-->See cookies from a site
  curl --cookie-jar Mycookies.txt https://www.samplewebsite.com /index.html -O
-->Send cookies to a site
  curl --cookie Mycookies.txt https://www. samplewebsite.com





