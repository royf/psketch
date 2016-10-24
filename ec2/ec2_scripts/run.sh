BRANCH="exp/craft_modular_state-baseline"

exec >STDOUT 2>STDERR

ssh-keyscan github.com >>/home/ubuntu/.ssh/known_hosts
su ubuntu -c "git clone git@github.com:jacobandreas/craft.git"
cd craft
git checkout $BRANCH
python main.py
git add -A
git commit -m "add experiments"
git push
