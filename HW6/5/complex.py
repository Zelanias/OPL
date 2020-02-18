class complex:
	def __init__(self,real,imaginary):
		self.real = real
		self.imaginary = imaginary
	def getReal(self):
		return self.real
	def getImaginary(self):
		return self.imaginary
	def __add__(self,o):
		return complex(self.real + o.real, self.imaginary + o.imaginary)
	def __sub__(self,o):
		return complex(self.real - o.real, self.imaginary - o.imaginary)
	def __mul__(self,o):
		return complex(self.real * o.real, self.imaginary * o.imaginary)
	def __div__(self,o):
		return complex(self.real / o.real, self.imaginary / o.imaginary)
 	def __str__(self):
 		return str(self.real) + ", "  + str(self.imaginary) + "i"
a = complex(2,3)
b = a + a
c = b - a
d = a * b
e = b / a
print(a)
print(b)
print(c)
print(d)
print(e)
print(a.getReal())
print(a.getImaginary())