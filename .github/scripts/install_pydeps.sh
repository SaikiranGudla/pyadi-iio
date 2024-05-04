#!/bin/bash
sudo apt-get install -y python3-pip python3-setuptools
pip install -r requirements.txt
pip install -r requirements_dev.txt
pip install pylibiio
#pip install --index-url https://test.pypi.org/simple/ pylibgenalyzer

echo "Installing.. Let's try your luck"
URL="https://test-files.pythonhosted.org/packages/e7/8d/9f3d2d1dd135c625692cf954669e242683106a6b4842db76d1a238201b13/pylibgenalyzer-0.0.1.dev1705356746.tar.gz#sha256=c24046695518ad1e35751fa0df579e25ac9b634bdbfa83c75a6a74ddb48deac9"
EXTRACTED_DIR="pylibgenalyzer-0.0.1.dev1705356746"

wget "$URL"
echo "Extracting package..."

tar -xzvf pylibgenalyzer-0.0.1.dev1705356746.tar.gz



echo "Installing package..."

cd "$EXTRACTED_DIR"

sudo python3 setup.py install
echo "All done"

echo "Now test"

cd /usr/local/lib/python3.10/dist-packages/
ls

#cat genalyzer.py

cd .local/lib/python3.10/site-packages
ls

cat genalyzer.py

echo "Advanced one"
cat genalyzer_advanced.py

rm genalyzer.py
rm genalyzer_advanced.py

echo "Done"