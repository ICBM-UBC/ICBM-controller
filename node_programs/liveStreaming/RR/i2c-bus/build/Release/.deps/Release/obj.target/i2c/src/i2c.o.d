cmd_Release/obj.target/i2c/src/i2c.o := g++ '-DNODE_GYP_MODULE_NAME=i2c' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-DBUILDING_NODE_EXTENSION' -I/home/pi/.node-gyp/0.10.43/include/node -I/home/pi/.node-gyp/0.10.43/src -I/home/pi/.node-gyp/0.10.43/deps/uv/include -I/home/pi/.node-gyp/0.10.43/deps/v8/include -I../../nan  -fPIC -Wall -Wextra -Wno-unused-parameter -pthread -Wno-unused-local-typedefs -O2 -fno-strict-aliasing -fno-tree-vrp -fno-omit-frame-pointer -fno-rtti -fno-exceptions -MMD -MF ./Release/.deps/Release/obj.target/i2c/src/i2c.o.d.raw   -c -o Release/obj.target/i2c/src/i2c.o ../src/i2c.cc
Release/obj.target/i2c/src/i2c.o: ../src/i2c.cc \
 /home/pi/.node-gyp/0.10.43/include/node/node.h \
 /home/pi/.node-gyp/0.10.43/include/node/uv.h \
 /home/pi/.node-gyp/0.10.43/include/node/uv-private/uv-unix.h \
 /home/pi/.node-gyp/0.10.43/include/node/uv-private/ngx-queue.h \
 /home/pi/.node-gyp/0.10.43/include/node/uv-private/uv-linux.h \
 /home/pi/.node-gyp/0.10.43/include/node/v8.h \
 /home/pi/.node-gyp/0.10.43/include/node/v8stdint.h \
 /home/pi/.node-gyp/0.10.43/include/node/node_object_wrap.h \
 /home/pi/.node-gyp/0.10.43/include/node/node.h ../../nan/nan.h \
 /home/pi/.node-gyp/0.10.43/include/node/node_version.h \
 /home/pi/.node-gyp/0.10.43/include/node/uv.h \
 /home/pi/.node-gyp/0.10.43/include/node/node_buffer.h \
 /home/pi/.node-gyp/0.10.43/include/node/node_object_wrap.h \
 ../../nan/nan_callbacks.h ../../nan/nan_callbacks_pre_12_inl.h \
 ../../nan/nan_maybe_pre_43_inl.h ../../nan/nan_converters.h \
 ../../nan/nan_converters_pre_43_inl.h ../../nan/nan_new.h \
 ../../nan/nan_implementation_pre_12_inl.h \
 ../../nan/nan_persistent_pre_12_inl.h ../../nan/nan_weak.h \
 ../../nan/nan_object_wrap.h ../../nan/nan_typedarray_contents.h \
 ../src/./i2cfuncs.h ../src/./readbyte.h ../src/./readword.h \
 ../src/./readblock.h ../src/./readi2cblock.h ../src/./receivebyte.h \
 ../src/./sendbyte.h ../src/./setaddr.h ../src/./writebyte.h \
 ../src/./writeword.h ../src/./writeblock.h ../src/./writei2cblock.h \
 ../src/./writequick.h ../src/./i2c-dev.h ../src/./i2cfuncs.cc \
 ../src/././i2c-dev.h ../src/././i2cfuncs.h ../src/././util.h \
 ../src/./readbyte.cc ../src/././readbyte.h ../src/./readword.cc \
 ../src/././readword.h ../src/./readblock.cc ../src/././readblock.h \
 ../src/./readi2cblock.cc ../src/././readi2cblock.h \
 ../src/./receivebyte.cc ../src/././receivebyte.h ../src/./sendbyte.cc \
 ../src/././sendbyte.h ../src/./setaddr.cc ../src/././setaddr.h \
 ../src/./writebyte.cc ../src/././writebyte.h ../src/./writeword.cc \
 ../src/././writeword.h ../src/./writeblock.cc ../src/././writeblock.h \
 ../src/./writei2cblock.cc ../src/././writei2cblock.h \
 ../src/./writequick.cc ../src/././writequick.h
../src/i2c.cc:
/home/pi/.node-gyp/0.10.43/include/node/node.h:
/home/pi/.node-gyp/0.10.43/include/node/uv.h:
/home/pi/.node-gyp/0.10.43/include/node/uv-private/uv-unix.h:
/home/pi/.node-gyp/0.10.43/include/node/uv-private/ngx-queue.h:
/home/pi/.node-gyp/0.10.43/include/node/uv-private/uv-linux.h:
/home/pi/.node-gyp/0.10.43/include/node/v8.h:
/home/pi/.node-gyp/0.10.43/include/node/v8stdint.h:
/home/pi/.node-gyp/0.10.43/include/node/node_object_wrap.h:
/home/pi/.node-gyp/0.10.43/include/node/node.h:
../../nan/nan.h:
/home/pi/.node-gyp/0.10.43/include/node/node_version.h:
/home/pi/.node-gyp/0.10.43/include/node/uv.h:
/home/pi/.node-gyp/0.10.43/include/node/node_buffer.h:
/home/pi/.node-gyp/0.10.43/include/node/node_object_wrap.h:
../../nan/nan_callbacks.h:
../../nan/nan_callbacks_pre_12_inl.h:
../../nan/nan_maybe_pre_43_inl.h:
../../nan/nan_converters.h:
../../nan/nan_converters_pre_43_inl.h:
../../nan/nan_new.h:
../../nan/nan_implementation_pre_12_inl.h:
../../nan/nan_persistent_pre_12_inl.h:
../../nan/nan_weak.h:
../../nan/nan_object_wrap.h:
../../nan/nan_typedarray_contents.h:
../src/./i2cfuncs.h:
../src/./readbyte.h:
../src/./readword.h:
../src/./readblock.h:
../src/./readi2cblock.h:
../src/./receivebyte.h:
../src/./sendbyte.h:
../src/./setaddr.h:
../src/./writebyte.h:
../src/./writeword.h:
../src/./writeblock.h:
../src/./writei2cblock.h:
../src/./writequick.h:
../src/./i2c-dev.h:
../src/./i2cfuncs.cc:
../src/././i2c-dev.h:
../src/././i2cfuncs.h:
../src/././util.h:
../src/./readbyte.cc:
../src/././readbyte.h:
../src/./readword.cc:
../src/././readword.h:
../src/./readblock.cc:
../src/././readblock.h:
../src/./readi2cblock.cc:
../src/././readi2cblock.h:
../src/./receivebyte.cc:
../src/././receivebyte.h:
../src/./sendbyte.cc:
../src/././sendbyte.h:
../src/./setaddr.cc:
../src/././setaddr.h:
../src/./writebyte.cc:
../src/././writebyte.h:
../src/./writeword.cc:
../src/././writeword.h:
../src/./writeblock.cc:
../src/././writeblock.h:
../src/./writei2cblock.cc:
../src/././writei2cblock.h:
../src/./writequick.cc:
../src/././writequick.h:
