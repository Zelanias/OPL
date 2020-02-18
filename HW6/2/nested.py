import random
first = random.randint(0,100)
second = random.randint(0,100)
third = random.randint(0,100)
max = mid = min = 0
if(first > second):
	if(first > third):
		max = first
		if(second > third):
			mid = second
			min = third
		else:
			mid = third
			min = second
	else:
		max = third
		mid = first
		min = second
elif(third > second):
	max = third
	mid = second
	min = first
elif(first >third):
	max = second
	mid = first
	min = third	
else:
	max = second
	mid = third
	min = first

print str(max) + " " + str(mid) + " " + str(min)