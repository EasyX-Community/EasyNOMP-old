
# Troubleshooting

-------

### 1. RPC Work Queue Depth Exceeded:

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