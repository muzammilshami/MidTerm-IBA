echo "= = = = = = == = == = = =  == = = = = = = = = = = = "
echo "___________________________________________________ "
echo "|welcome to Automated Reconnissance                |"
echo "|This Program is designed to automate Reconnissance|"
echo "___________________________________________________ "
echo "| To Strat Recon please select 1, If perform at later choose 0|"
read a 
if [ $a -eq 1 ] ;
then
echo "Reconnissance Started!!!!"
echo
echo
echo "Enter your desired domain "

read b
sublist3r -d $b -e all -o sublist3routput.txt
echo 
echo
echo
echo "Whois Command Starting"
whois $b
echo
echo
echo
echo "NSlookup Command is Starting"
nslookup $b
echo
echo
echo
echo "The Harvester Command  is Starting"
theHarvester -d $b  -l 500 -b all
echo
echo
echo
elif [ $a -eq 0 ] ;
then
echo "Reconnissance Closing"
else 
echo "Wrong Input"
fi




