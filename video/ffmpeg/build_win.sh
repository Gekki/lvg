if [ ! -d "FFmpeg" ]; then
  git clone --depth=1 https://github.com/FFmpeg/FFmpeg
fi
cd FFmpeg

./configure \
        --arch=x86_64 --target-os=mingw32 --cross-prefix=x86_64-w64-mingw32- --pkg-config=pkg-config \
	--disable-pthreads \
	--disable-w32threads \
	--disable-os2threads \
	--disable-debug \
	--disable-stripping \
	\
	--disable-all \
	--enable-avcodec \
	--enable-avutil \
	--disable-network \
	--disable-d3d11va \
	--disable-dxva2 \
	--disable-vaapi \
	--disable-vdpau \
	--enable-decoder=flv,vp6a,vp6f,flashsv,flashsv2,h264 \
	--disable-bzlib \
	--disable-iconv \
	--disable-libxcb \
	--disable-lzma \
	--disable-sdl2 \
	--disable-securetransport \
	--disable-xlib \
	--disable-zlib

make -j8

cd ..