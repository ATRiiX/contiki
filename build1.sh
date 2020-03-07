#!/bin/bash

export PATH="/home/atrix/gcc-arm-none-eabi-9-2019-q4-major/bin:$PATH"
cd ./examples/cc26xx/cc26xx-ble-client-demo-socket
make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 client
cp client.hex ../../../client.hex
cd ../cc26xx-ble-server-demo-socket
make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 server
cp server.hex ../../../server.hex

