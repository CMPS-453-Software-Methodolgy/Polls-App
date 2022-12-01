npm ci >/dev/null
npm i cypress --save-dev >/dev/null
apt-get update >/dev/null
apt-get install -y python3 python3-pip
pip3 --version
python3 --version
pip3 install virtualenv
python3 -m virtualenv venv
source venv/bin/activate
pip3 install --upgrade -q pip
pip3 install --no-cache-dir -r requirements.txt
python3 manage.py migrate
python3 manage.py collectstatic --no-input >/dev/null
