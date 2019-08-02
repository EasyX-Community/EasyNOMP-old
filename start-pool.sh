#!/bin/bash

pm2 del pool

pm2 start --name pool node -- --max-old-space-size=4096 /root/nomp-EASYNOMP/init.js
