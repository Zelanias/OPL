#include <iostream>
//Question 6
using namespace std;
int main(){
	int arr [1000][1000];
	for(int i = 0; i < 1000; i++){
		for(int o = 0; o < 1000; o++){
			arr[i][o] = 10;
		}
	}
	int *pointer = NULL;
	pointer = &arr[0][0];
	for(int i = 0; i < 1000; i++){
		for(int o = 0; o < 1000; o++){
			*(pointer + 4*i+o);
		}
	}
}