# spusteni ziskavani statistik

cd "$(dirname "$0")"

source ./venv/bin/activate
cd src
python3 pistat.py

deactivate


