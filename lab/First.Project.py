# Find Normal/Leap year Project
year = int(input("Enter Year: "))
if year %400 == 0:
    print("Leap year")
elif year %100 == 0:
    print("Normal Year")
elif year %4 == 0:
    print("Leap Year")
else:
    print("Normal Year")
