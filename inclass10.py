ADULT = 40
SENIOR = 30
CHILD = 20
Adult_Choice = 1
Child_Choice = 2
Senior_Choice = 3
Quit_Choice = 4
print "Health Club Membership Menu\n1. Standard Adult Membership\n2. Child Memebership\n3. Senior Citizen Membership\n4. Quit the Program\n\n"
choice = int(raw_input("Enter your choice:"))
if(choice==Adult_Choice):
	months = raw_input("For how many months? ")
	print "The total charges are $" + str(int(months)*ADULT)
elif(choice==Child_Choice):
	months = raw_input("For how many months? ")
	print "The total charges are $" + str(int(months)*CHILD)
elif(choice==Senior_Choice):
	months = raw_input("For how many months? ")
	print "The total charges are $" + str(int(months)*SENIOR)
elif(choice == Quit_Choice):
	print "Program ending\n"
else:
	print "The valid choices are 1 through 4.\nRun the program again and select one of those.\n"