#include <stdio.h>
int decode2(int x, int y, int z);

int main() {
	return 0;
}

int decode(int x, int y, int z) {
	y -= z;
	int t = y;
	y <<= 31;
	y >>= 31;
	t *= x;
	y ^= t;
	return y;
}