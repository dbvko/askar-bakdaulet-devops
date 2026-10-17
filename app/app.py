import os

name = os.getenv("STUDENT_NAME", "Bakdaulet")
surname = os.getenv("STUDENT_SURNAME", "Askar")
group = os.getenv("STUDENT_GROUP", "IT2-2306")
student_id = os.getenv("STUDENT_ID", "38030")

print("==============================")
print("Student Information")
print("==============================")
print(f"Name: {name}")
print(f"Surname: {surname}")
print(f"Group: {group}")
print(f"Student ID: {student_id}")
print("==============================")

print("Environment: development")

