nodeid=`ps -ef |grep node|grep -v grep|wc -l`
echo $nodeid 
if [ $nodeid -gt 0 ]
then

        sleep 20
        pm2 restart 1
        pm2 list
else
        pm2 start /usr/local/src/nodejs1/server.js
        nodeid=`ps -ef |grep node|grep -v grep|wc -l`
        echo $nodeid
        if [ $nodeid -gt 0 ]
        then
                echo “node启动成功”
        else
                echo “node启动失败-----”
        fi
fi
