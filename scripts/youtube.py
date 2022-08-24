'''YouTube Video Downloader'''
import pytube

link = input("Enter YouTube Video URL: ")
yt = pytube.YouTube(link)
yt.streams.first().download()
print(f"Downloaded {link}")
# videos = yt.streams.all()