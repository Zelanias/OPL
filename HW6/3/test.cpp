#include <iostream>
using namespace std;

void reference(int &i){
	i = i + 1;
}

void value(int i){
	i = i + 1;
}

int main(){
	int i = 1;
	reference(i);
	cout << i << endl;
	value(i);
	cout << i << endl;
	return 0;
}