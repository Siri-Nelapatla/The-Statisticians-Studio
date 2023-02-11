echo "BUILD STATRT"
python3.11 -m pip install -r requirements.txt
python3.11 manage.oy collectstatic --noinput --clear
echo "BUILD END"
