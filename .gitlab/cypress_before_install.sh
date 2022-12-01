npm ci >/dev/null
npm i cypress --save-dev >/dev/null
apt-get update >/dev/null
apt-get install -y python3 python3-dev python3-pip
pip install virtualenv
virtualenv venv
source venv/bin/activate
pip install --upgrade -q pip
pip install --no-cache-dir -r requirements.txt
python manage.py migrate
python manage.py collectstatic --no-input >/dev/null
