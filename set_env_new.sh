# Installer python 3.7
sudo apt update
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update
sudo apt install python3.7 python3.7-venv python3.7-dev -y
python3.7 --version
# Modop légérement modifié
python3.7 -m venv hyphc_env
source hyphc_env/bin/activate
pip install -r requirements.txt
pip install setuptools==50.3.0
cd mst; python3.7 setup.py build_ext --inplace
cd ..
cd unionfind; python3.7 setup.py build_ext --inplace
cd ..
source download_data.sh
source set_env.sh
python3.7 train.py