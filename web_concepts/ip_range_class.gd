#IP Class
A  0   --> 127 
B  128 --> 191
C  192 --> 223
D  224 --> 239
E  240 --> 255
----------------
# Amount computers in network

A --> 2^24
B --> 2^16-
----------------
#Private IPs
10.0.0.0 (8 hosts) Class A
172.16.0.0 (12 hosts) Class B
192.168.0.0 (16 hosts) Class C

#Loopbacks
# Any IP starting with 127.* can't be used to another porpose unless localhost hence it is always a loopback one
#That is always private to that host
127.0.0.0 

# Any IP starting with 169.* means "APIPA" what it its, that means it didn't get a valid IP from a DHCP IP
or any ip distributor. 
---------------------------------
#Mask
A --> 255.0.0.0
B --> 255.255.0.0
C --> 255.255.255.0


