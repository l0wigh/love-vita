#!/bin/bash
platform/vita/automagic

./configure --host=arm-vita-eabi  --prefix=$VITASDK/arm-vita-eabi/ --disable-shared --enable-static --with-luaversion=5.1 --disable-library-enet --disable-library-luasocket

make -j $(nproc); grep --exclude="build-vita.sh" -rlZ "lpthread" . | xargs -0 sed -i 's/-lpthread//g'; make -j $(nproc);

vita-elf-create -s ./src/love ./love.velf
vita-make-fself ./love.velf ./love.self

