'''Language Detection.'''
from langdetect import detect

text = input("Enter any text in any language: ")
print(f"Detected language: {detect(text)}")