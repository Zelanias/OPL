class q7{
	public static void main(String args[]){
		int x = 10;
		x = x + foo(x);
		System.out.println(x);
		x = 10;
		x = foo(x) + x;
		System.out.println(x);
		x = 10;
		x = x++  + foo(x);
		System.out.println(x);
		x = 10;
		x = foo(x) + ++x;
		System.out.println(x);
		x = 10;
		x = ++x + foo(x);
		System.out.println(x);
	}
	static public int foo(int x){
		return x+3;
	}
} 