a = 0
b = 0
x = 0
def one():
	global a
	a = 1
	global b
	b = 2
	c = 0
	d = 0
	def two():
		global b
		d = 4
		nonlocal c
		c = 5
		e = 10
		b = 2
		a = 3
		def three():
			nonlocal a
			a = 3
			b = 20
			global x
			x = 4
			print(str(a))
			print(str(b))
			print(str(x))
one()
