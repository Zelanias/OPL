import random
first = random.randint(0,100)
second = random.randint(0,100)
third = random.randint(0,100)
max = mid = min = 0
if(first > second > third):
	max = first
	mid = second
	min = third
elif(first > third > second):
	max = first
	mid = third
	min = second
elif(second > first > third):
	max = second
	mid = first
	min = third
elif(second > third > first):
	max = second
	mid = third
	min = first
elif(third > second > first):
	max = third
	mid = second
	min = first
else:
	max = third
	mid = first
	min = second
print str(max) + " " + str(mid) + " " + str(min)
