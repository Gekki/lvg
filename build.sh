gcc -s -Os -flto -fno-stack-protector nanovg.c svg.c lunzip.c -L. -I. -Izlib -Izip -DHAVE_CONFIG_H -o svg -lm -lglfw -lGL -ltcc3 -ldl