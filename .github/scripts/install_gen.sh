#!/bin/bash



echo "Installing.. Let's try your luck"



#sudo apt-get update

sudo apt-get update
sudo apt-get install build-essential libfftw3-dev



git clone https://github.com/analogdevicesinc/genalyzer.git

cd genalyzer



#sudo pip3 install -r requirements_doc.txt



mkdir build

cd build

cmake -DPYTHON_BINDINGS=ON ..

make

sudo make install

sudo ldconfig
cd ..


#URL="https://test.pypi.org/simple/ pylibgenalyzer-0.0.1.dev1705356746.tar.gz"

#EXTRACTED_DIR="ylibgenalyzer-0.0.1.dev1705356746"



#wget "$URL"



#pip install --index-url https://test.pypi.org/simple/ pylibgenalyzer-0.0.1.dev1705356746.tar.gz









echo "All done"
