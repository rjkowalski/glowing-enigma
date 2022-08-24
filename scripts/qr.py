'''Gererate a QR code from a string.'''

import pyqrcode
import png
from pyqrcode import QRCode

s = "www.geeksforgeeks.org"
url = pyqrcode.create(s)
url.png('qr.png', scale=6)
url.svg('qr.svg', scale=6)
print("QR Code Generated")