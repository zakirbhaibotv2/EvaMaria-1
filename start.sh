if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/zakirbhaibotv2/mctgvit.git /mctgvit
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /mctgvit
fi
cd /mctgvit
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
