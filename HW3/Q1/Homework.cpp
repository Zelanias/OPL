#include <ctime>
#include <iostream>
using namespace std;
void staticArray();
void stackArray();
void heapArray();
int main(){
	clock_t begin = clock();
	for(int i = 0; i < 300000; i++){
		staticArray();
	}
	cout << float( clock () - begin ) /  CLOCKS_PER_SEC << endl;
	begin = clock();
	for(int i = 0; i < 300000; i++){
		stackArray();
	}
	cout << float( clock () - begin ) /  CLOCKS_PER_SEC << endl;
	begin = clock();
	for(int i = 0; i < 300000; i++){
		heapArray();
	}
	cout << float( clock () - begin ) /  CLOCKS_PER_SEC << endl;
}
void staticArray(){
	int static arr[100000];
}
void stackArray(){
	int arr[100000];
}
void heapArray(){
	int * arr = new int[100000];
}


