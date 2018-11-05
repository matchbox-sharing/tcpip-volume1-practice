lo="127.0.0.1"
MTU=65535
packet_size=65507 #65535-28=65507
count=3

echo "===== default ping $lo without any parameters ===="
ping -c $count $lo 
echo ""
echo "==== ping $lo with packet size $MTU ===="
ping -c $count -s $MTU $lo
echo ""
echo "==== ping $lo with packet size $packet_size ===="
ping -c $count -s $packet_size $lo
