'''Send email using Python.'''
import smtplib

my_email = "test@gmail.com"
my_password = "test123"
recipient_email = "alpha@gmail.com"

connection = smtplib.SMTP('smtp.gmail.com', 587)
connection.starttls()
connection.login(user=my_email, password=my_password)
connection.sendmail(from_addr=my_email, to_addrs=recipient_email, msg="Hello World!")
connection.close()