run=0
cd /home/sakthipriyan/sakthipriyan.com/
git remote update
count=`git rev-list HEAD...origin/master | wc -l`
if [ "$count" -gt "0" ] ; then
  echo "Data changed. Updating sakthipriyan.com repo"
  git pull
  run=1
fi
cd /home/sakthipriyan/webgen/
git remote update
count=`git rev-list HEAD...origin/master | wc -l`
if [ "$count" -gt "0" ] ; then
  echo "Code changed. Updating webgen repo"
  git pull
  run=1
fi
if [ "$run" -ne "0" ]; then
  python webgen.py ../sakthipriyan.com/conf/prod.json
  cp -fr /home/sakthipriyan/sakthipriyan.com/dist/* /var/www/sakthipriyan.com/
fi
