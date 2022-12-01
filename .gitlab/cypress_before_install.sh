npm ci >/dev/null
npm i cypress --save-dev >/dev/null
apt-get update >/dev/null
apt-get install -y python3 python3-dev python3-pip >/dev/null
pip3 install -q virtualenv
virtualenv venv >/dev/null
source venv/bin/activate
pip3 install --upgrade -q pip
pip3 install --no-cache-dir -qr requirements.txt
python3 manage.py migrate >/dev/null
python3 manage.py collectstatic --no-input >/dev/null
