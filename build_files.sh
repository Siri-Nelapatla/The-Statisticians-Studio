echo "BUILD STATRT"
python3.9 -m pip install -r requirements.txt
python3.9 manage.oy collectstatic --noinput --clear
echo "BUILD END"
