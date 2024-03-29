sudo apt update
sudo apt-get install -y openjdk-8-jdk
for i in {1..255}; do echo "192.168.1.$i host-192-168-1-$i-ldsa" | sudo tee -a /etc/hosts; done
for i in {1..255}; do echo "192.168.2.$i host-192-168-2-$i-ldsa" | sudo tee -a /etc/hosts; done
sudo hostname host-$(hostname -I | awk '{$1=$1};1' | sed 's/\./-/'g)-ldsa ; hostname
echo "export PYSPARK_PYTHON=python3" >> ~/.bashrc
source ~/.bashrc
sudo apt-get install -y git
sudo apt-get install -y python3-pip
python3 -m pip install pip
sudo apt install -y jupyter-notebook
python3 -m pip install pyspark --user
python3 -m pip install pandas --user
python3 -m pip install matplotlib --user
git clone https://github.com/Slakky/LDSA.git
