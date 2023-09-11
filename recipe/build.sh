# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* .
mkdir build
cd build

cmake ${CMAKE_ARGS} -G "Ninja" \
  -DCMAKE_INSTALL_PREFIX="$PREFIX" \
  -DCMAKE_PREFIX_PATH="$PREFIX" \
  -DCMAKE_SYSTEM_PREFIX_PATH="$PREFIX" \
  -DCMAKE_BUILD_TYPE="Release" \
  -DWITH_EXAMPLES=OFF \
  -DWITH_SvtEnc=OFF \
  -DWITH_RAV1E=OFF \
  ..

ninja

ninja install

