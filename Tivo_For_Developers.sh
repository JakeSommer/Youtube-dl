#!/bin/bash

#This is a script for developers that downloads all of the latest video uploads on youtube channels that teach programing. 
#The script will create a new folder for each channel and populate it with yesterday's uploads.
#You can specify the playlists/channels that you want to download from, the date (default is yesterday), 
#and the maximum number of items in the playlist that you would like to iterate through (if you only care about videos downloaded 
#yesterday then 10 should be enough for most channels.

#Creates a variable for the time the script started running
START_TIME=`date '+%Y-%m-%d %H:%M:%S'`
#Creates a variable for today and yesterday's datea
DATETODAY=`date +%Y%m%d`
let DATE=DATETODAY-1
#downloads yesterday's videos from each of the channels and places them into a new folder. If no videos are found, no folders will be created.
#note that the script only checks the last 10 items uploaded onto each channel
#Channel: JtheLinuxguy
youtube-dl --playlist-items 1-10 --date $DATE -o '%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' https://www.youtube.com/user/JtheLinuxguy/videos
#Channel: Academind
youtube-dl --playlist-items 1-10 --date $DATE -o '%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' https://www.youtube.com/channel/UCSJbGtTlrDami-tDGPUV9-w/videos
#Channel: Google Developers
youtube-dl --playlist-items 1-10 --date $DATE -o '%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' https://www.youtube.com/user/GoogleDevelopers/videos
#Channel: CoreySchaffer
youtube-dl --playlist-items 1-10 --date $DATE -o '%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' https://www.youtube.com/user/schafer5/videos
#Channel: Sentdex
youtube-dl --playlist-items 1-10 --date $DATE -o '%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' https://www.youtube.com/user/sentdex/videos
# creates a variable for the time the script stopped running and prints both the start and the stop times.
END_TIME=`date '+%Y-%m-%d %H:%M:%S'`
ECHO $START_TIME
ECHO $END_TIME
