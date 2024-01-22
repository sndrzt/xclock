# sudo apt-get install libxt-dev libxmu-dev libxaw7-dev
all:
	gcc -I. -g -O2 -c -o Clock.o Clock.c
	gcc -I. -g -O2 -c -o xclock.o xclock.c
	gcc -g -O2 -o xclock Clock.o xclock.o -lXt -lXmu -lXaw7 -lX11

clean:
	rm -rf xclock Clock.o xclock.o

test:
	xclock

