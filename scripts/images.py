'''Convert images to PDFs.'''

from fpdf import FPDF

pdf = FPDF()
# imagelist is the list with all the image filenames
imagelist = []
for image in imagelist:
    pdf.add_page()
    # pdf.image(image, x=None, y=None, w=0, h=0, type='', link='')
    pdf.image(image, 0, 0, 210, 297)
    pdf.output('images.pdf', 'F')