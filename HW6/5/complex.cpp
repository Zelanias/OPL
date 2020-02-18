#include <iostream>
using namespace std;
class complex{
	private:
		double real;
		double imaginary;
	public:
		complex(double r, double i){
			real = r;
			imaginary = i;
		}
		complex(complex a, complex b){
			real = a.real + b.real;
			imaginary = a.imaginary + b.imaginary;
		}
		complex(const complex& a){
			real = a.real;
			imaginary = a.imaginary;
		}
		double getReal(){
			return real;
		}
		double getImaginary(){
			return imaginary;
		}
		complex operator+(const complex other){
			complex temp(0,0);
			temp.real = real + other.real;
			temp.imaginary = imaginary + other.imaginary;
			return temp;
		}
		complex operator-(const complex other){
			complex temp(0,0);
			temp.real = real - other.real;
			temp.imaginary = imaginary - other.imaginary;
			return temp;
		}	
		complex operator*(const complex other){
			complex temp(0,0);
			temp.real = real * other.real;
			temp.imaginary = imaginary * other.imaginary;
			return temp;
		}	
		complex operator/(const complex other){
			complex temp(0,0);
			temp.real = real / other.real;
			temp.imaginary = imaginary / other.imaginary;
			return temp;
		}
		void print(){
    		printf( "%.4f + %.4fi", real, imaginary);
		}		
		
};
int main(){
	complex a(2,3);
	cout << "A real: " << a.getReal() << " A imaginary: " << a.getImaginary()<<endl;
	complex b = a + a;
	b.print();
	cout << endl;
	b = a-a-a;
	b.print();
	b = a*a;
	cout<<endl;
	b.print();
	b = a/a;
	cout<<endl;
	b.print();
	complex c(a,b);
	cout<<endl;
	c.print();
	complex d(a+b+c);
	cout<<endl;
	d.print();
}