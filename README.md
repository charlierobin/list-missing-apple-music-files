# List missing Apple Music files

Uses the XML file exported from Apple’s macOS Music app (File ▸ Library ▸ Export Library…), therefore the results are only as up-to-date as the last time you did this export.

<img width="492" alt="music export menu screenshot" src="https://github.com/charlierobin/list-missing-apple-music-files/assets/10506323/85e3f450-dd4e-4f2d-815e-7b9e2a7375e0">

Files can be missing in two different ways:

**(1)** If Music has lost track of the music file, and there is an exclamation mark in a circle by the track in the Music window, then when the XML file is exported the track info dictionary will have no `Location` value.

**(2)** If the file has been moved since the time the XML was exported then the info dict will have a `Location` value, but there will be no file at that location.

This little app deals with both eventualities:

Tracks missing a `Location` key-value pair are listed.

If a track has a `Location` value, it checks that the path is a file. If no file is found, the track is listed.

## Notes

At the moment, both the stream and XML implementations are pretty bodged up. 

The XML implementation depends on nodes in the XML being in particular positions (offsets).

The stream implementation depends on the key-value pairs being on the same line, as it reads in line by line from the file on disk.

(This is because I was just interested in seeing if the basic idea was workable, and seeing how the two methods stacked up against each other speed wise.)

That’s a long-winded way of saying that the app works perfectly with the 121MB XML file that Music exports on my machine running macOS Catalina, but who knows what happens with any other versions of the app running on other versions of macOS.

As far as speed goes, on my Mac, the stream version is far faster: 16 seconds versus 49 seconds. No real surprises there, I think.

[Link to pre-built universal binary (Intel and Apple Silicon)](https://dl.dropboxusercontent.com/s/wtczr4yhqq1bv3v/Missing_Music_Files.zip?dl=0)
