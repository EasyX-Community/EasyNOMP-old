
# Troubleshooting

-------
## 1) Update Pool Source (should be done monthly at minimum)
```
cd EasyNOMP
git pull
npm update -g
npm --depth 9999 update
npm audit fix
./pool-restart.sh
```

-------
## 2) Startup on Boot
```
pm2 startup
```
Copy & paste the command (if it asks you to)<br />
Save the process list
```
pm2 save
```

-------

## 3) Watching Pool Logs
```
./pool-logs-watch.sh # Watch regular logs
or
./pool-logs-watch.sh " BTCADDRESSTOSCANFOR " # Scan for a coin address
or
./pool-logs-watch.sh "block>accepted>" # Scan for accepted blocks
or
./pool-logs-watch.sh "block>rejected>" # Scan for a rejected blocks
or
./pool-logs-watch.sh "share>accepted>" # Scan for accepted shares
or
./pool-logs-watch.sh "share>rejected>" # Scan for rejected shares
or
./pool-logs-watch.sh "DIFFICULTY>" # Scan for difficulty updates
```

-------

### 4) RPC Work Queue Depth Exceeded:

https://github.com/bitcoin/bitcoin/issues/14578<br />
https://github.com/foxer666/node-open-mining-portal/issues/106 (fixed in master)<br />
https://github.com/foxer666/node-open-mining-portal/issues/145 (still working on a fix)<br />

If you encounter "Work queue depth exceeded" enter into wallet config:
```
rpcworkqueue=100
```
Restart the wallet + pool

***This crypto is not lost, it is still in your pool wallet. It will payout on restart :)***

-------

***EOF***
