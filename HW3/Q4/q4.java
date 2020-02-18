class q4{
	public static void main(String args[]){
		//type casting int to byte
		byte a = 10;
		a = (byte)(a*3);
		System.out.println(a);
		//Explicit type conversion
		double b = 3.14;
		long c = (long)b;
		int d = (int)c;
		System.out.println("Double: " + b);
		System.out.println("Long: " + c);
		System.out.println("Int: " + d);
		a = 13;
		short e = 2000;
		d = 100000;
		b = 6.12;
		double r =  a + d - b + e;
		System.out.println("Result: " + r);
	}	
} 