./build_openroad.sh
cd flow
sudo make
openroad ../tools/OpenROAD/src/p2f/test/sample.tcl
