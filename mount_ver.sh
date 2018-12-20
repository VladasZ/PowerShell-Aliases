
remote_path="/root/dev/work/NodeFPGA"
local_path="/home/vladas/dev/work/remote_NodeFPGA"

sudo pkill -kill -f "sshfs"
sudo fusermount -u $local_path
sshfs root@185.227.111.43:$remote_path $local_path
