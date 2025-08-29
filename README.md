# List missing Apple Music files

Uses the XML file exported from Apple’s macOS Music app (File ▸ Library ▸ Export Library…), therefore the results are only as up-to-date as the last time you did this export.

<img width="492" alt="music export menu screenshot" src="https://github.com/charlierobin/list-missing-apple-music-files/assets/10506323/85e3f450-dd4e-4f2d-815e-7b9e2a7375e0">

Files can be missing in two different ways:

**(1)** If Music has lost track of the music file, and there is an exclamation mark in a circle by the track in the Music window, then when the XML file is exported the track info dictionary will have no `Location` value.

**(2)** If the file has been moved since the time the XML was exported then the info dict will have a `Location` value, but there will be no file at that location.

This little app deals with both eventualities:

Tracks missing a `Location` key-value pair are listed.

If a track has a `Location` value, it checks that the path is a file. If no file is found, the track is listed.

The app experiments with two different ways of using the XML data: (1) using Xojo’s XML classes to read in the document and then find the `Tracks` node and iterate its contents, and (2) using the TextStream class to read the XML line by line, looking for the right key-name-value pairs and then getting the appropriate values (track name, artist name, album name, location path) out with some very simple RegEx.

Xojo’s XML parsing classes are based on Expat 1.95.7.

[The Expat XML Parser page on Github](https://libexpat.github.io)

## Notes

At the moment, both the stream and XML implementations are pretty bodged up. 

The XML implementation depends on nodes in the XML being in particular positions (offsets).

The stream implementation depends on the key-value pairs being on the same line, as it reads in line by line from the file on disk.

(This is because I was just interested in seeing if the basic idea was workable, and seeing how the two methods stacked up against each other speed wise.)

That’s a long-winded way of saying that the app works perfectly with the 121MB XML file that Music exports on my machine running macOS Catalina, but who knows what happens with any other versions of the app running on other versions of macOS.

As far as speed goes, on my Mac, the TextStream version is far faster: 16 seconds versus 49 seconds. No real surprises there, I think.

[Link to pre-built universal binary (Intel and Apple Silicon)](https://github.com/charlierobin/list-missing-apple-music-files/releases)

### Notes as of Aug 2025

What was supposed to happen here was that the original (temporary) way of using the Music-exported XML file would be replaced by one of my other command line versions of identifying the missing tracks, one that actually uses the macOS API to interrogate the user’s “live” music database. So this Xojo app would basically just be a GUI front end to that command line back end.

[Command line version in Swift](https://github.com/charlierobin/list-missing-apple-music-files-swift)

[Command line version in Objective-C](https://github.com/charlierobin/list-missing-apple-music-files-objc)

Of course, that never happened, there being nothing so permanent as that which is temporary.

