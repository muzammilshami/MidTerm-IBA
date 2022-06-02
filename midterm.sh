echo " Weolcome to my Recon Project"
echo 
echo
echo "Please Provide your Domain  for which Reconnissance will be Performed"
echo
read d
echo "First Reconnissance is for IP Resolution"
nslookup $d
echo "Second Reconnissance is WHO-IS and DIG for the Provided Domain"
whois $d -H
dig $d
echo "Third Reconnissance is to find Sub-Domains"
sublist3r -d $d -o subdomains.txt
echo 
echo
echo "To identify Public email addresses list"
theHarvester -d $d -l 500 -b all -f publicemails.txt
echo
echo 
nmap $d
