#include <iostream>
using namespace std;
int main(){
	enum Color {red, green, blue, orange, white = 200, black, gray = red + green, silver, purple};
	int n = orange;
	cout << n << endl;
	n = white - green;
	cout << n << endl;
	n = silver;
	cout << n << endl;
	n = black;
	cout << n << endl;
	white = 20;
	n = black;
	cout << n << endl;
	gray = 10;
	n = silver;
	cout << n << endl;
	red = -3;
	n = green;
	cout << n << endl;
	white = purple - red;
	n = white;
	cout << n << endl;
	n = purple;
	cout << n << endl;
	black = red * white;
	n = black;
	cout << n << endl;
}
