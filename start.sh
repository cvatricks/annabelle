if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/cvatricks/annabelle/tree/v1.0 /annabelle
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /annabelle
fi
cd /annabelle
pip3 install -U -r requirements.txt
echo "Starting Bot...."
ls
print(dir())
python3 bot.py
