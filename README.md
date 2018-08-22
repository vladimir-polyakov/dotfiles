Build vim from source with python clipboard and e.t.c

```
cd src
make distclean
cd ..

./configure \
--enable-multibyte \
--enable-perlinterp=dynamic \
--enable-pythoninterp=no \
--enable-python3interp=yes \
--with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu \
--enable-luainterp \
--with-luajit \
--enable-cscope \
--enable-gui=auto \
--with-features=huge \
--with-x \
--enable-fontset \
--enable-largefile \
--disable-netbeans \
--with-compiledby="nordberg" \
--enable-fail-if-missing

make && sudo make install

