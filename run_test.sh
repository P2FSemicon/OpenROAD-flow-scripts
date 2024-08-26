
./build_openroad.sh
. ./env.sh
. ./dev_env.sh
cd flow
sudo make
sudo make vars
. ./vars.sh
openroad ../tools/OpenROAD/src/p2f/test/sample.tcl
