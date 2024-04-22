python -m pip install --upgrade -q pip
pip install --root-user-action=ignore -q virtualenv
virtualenv venv >/dev/null
source venv/bin/activate
pip install --no-cache-dir -qr requirements.txt
python manage.py migrate >/dev/null
python manage.py collectstatic --no-input >/dev/null
rm -rf staticfiles/fontawesomefree/js-packages
rm -rf staticfiles/fontawesomefree/svgs
du -sh staticfiles/fontawesomefree/metadata
