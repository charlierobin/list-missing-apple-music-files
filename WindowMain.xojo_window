#tag Window
Begin Window WindowMain
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   600
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   845189119
   MenuBarVisible  =   True
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   False
   Title           =   "Missing Apple Music files, tracks with no Location path"
   Type            =   0
   Visible         =   True
   Width           =   1012
   Begin TextArea TextAreaFiles
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   True
      AllowStyledText =   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF00
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      Height          =   517
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   True
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Uses the XML file exported from Apple’s macOS Music app (File ▸ Library ▸ Export Library…), therefore the results are only as up-to-date as the last time you did this export.\n\nFiles can be missing in two different ways:\n\n(1) If Music has lost track of the music file, and there is an exclamation mark in a circle by the track in the Music window, then when the XML file is exported the track info dictionary will have no ""Location"" value.\n\n(2) If the file has been moved since the time the XML was exported then the info dict will have a ""Location"" value, but there will be no file at that location.\n\nThis little app deals with both eventualities:\n\nTracks missing a ""Location"" key-value pair are listed.\n\nIf a track has a ""Location"" value, it checks that the path is a file. If no file is found, the track is listed.\n\nNotes:\n\nAt the moment, both the stream and XML implementations are pretty bodged up. \n\nThe XML implementation depends on nodes in the XML being in particular positions (offsets).\n\nThe stream implementation depends on the key-value pairs being on the same line, as it reads in line by line from the file on disk.\n\n(This is because I was just interested in seeing if the basic idea was workable, and seeing how the two methods stacked up against each other speed wise.)\n\nThat’s a long-winded way of saying that the app works perfectly with the 121MB XML file that Music exports on my machine running macOS Catalina, but who knows what happens with any other versions of the app running on other versions of macOS.\n\nAs far as speed goes, on my Mac, the stream version is far faster: 16 seconds versus 49 seconds. No real surprises there, I think."
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      UnicodeMode     =   1
      ValidationMask  =   ""
      Visible         =   True
      Width           =   972
   End
   Begin PushButton PushButtonStream
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Using TextStream"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   837
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   560
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   155
   End
   Begin PushButton PushButtonXML
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Using XML (Expat 1.95.7)"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   627
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   560
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   198
   End
   Begin PushButton PushButtonClear
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Clear"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   560
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   78
   End
   Begin Label LabelPath
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   217
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Untitled"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   560
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   398
   End
   Begin PushButton PushButtonSelect
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Select…"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   110
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   560
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   95
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  self.updateButtons()
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function getValue(line as String) As String
		  static regex as RegEx = nil
		  
		  if regex = nil then
		    
		    regex = new RegEx()
		    
		    regex.SearchPattern = "<string>(.*)</string>"
		    
		    System.DebugLog( "regex" )
		    
		  end if
		  
		  var m as RegExMatch = regex.Search( line )
		  
		  if m <> nil then
		    
		    return m.SubExpressionString( 1 )
		    
		  else
		    
		    return "Error! You should never see this…"
		    
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub handleTrack(s as TextInputStream)
		  static prefixToStripOff as String = "file://"
		  
		  var name as String = ""
		  var artist as String = ""
		  var album as String = ""
		  var location as String = ""
		  
		  while not s.EndOfFile()
		    
		    var line as String = s.ReadLine()
		    
		    if line.contains( "</dict>" ) then
		      
		      if location = "" then
		        
		        self.TextAreaFiles.AddText( name + " - " + artist + " - " + album + EndOfLine )
		        
		      else
		        
		        location = DecodeURLComponent( location, Encodings.UTF8 )
		        
		        location = location.Middle( prefixToStripOff.Length() )
		        
		        // this is a bodge for amerpsands which are in path as entities (the source is an XML file, after all)
		        
		        location = location.ReplaceAll( "&#38;", "&" )
		        
		        var f as FolderItem = new FolderItem( location, FolderItem.PathModes.Native )
		        
		        if not f.Exists then
		          
		          self.TextAreaFiles.AddText( name + " - " + artist + " - " + album + " - " + location + EndOfLine )
		          
		        end if
		        
		      end if
		      
		      return
		      
		    elseif line.contains( "<key>Name</key>" ) then
		      
		      name = self.getValue( line )
		      
		    elseif line.contains( "<key>Artist</key>" ) then
		      
		      artist = self.getValue( line )
		      
		    elseif line.contains( "<key>Album</key>" ) then
		      
		      album = self.getValue( line )
		      
		    elseif line.contains( "<key>Location</key>" ) then
		      
		      location = self.getValue( line )
		      
		    end if
		    
		  wend
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub handleTracks(s as TextInputStream)
		  while not s.EndOfFile()
		    
		    var line as String = s.ReadLine()
		    
		    if line.contains( "<key>Playlists</key>" ) then return
		    
		    if line.contains( "<key>Track ID</key>" ) then
		      
		      self.handleTrack( s )
		      
		    end if
		    
		  wend
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub updateButtons()
		  if self.LabelPath.Text = "" then
		    
		    self.PushButtonStream.Enabled = false
		    self.PushButtonXML.Enabled = false
		    
		  else
		    
		    self.PushButtonStream.Enabled = true
		    self.PushButtonXML.Enabled = true
		    
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub viaStream(f as FolderItem)
		  var s as TextInputStream = TextInputStream.Open( f )
		  
		  s.Encoding = Encodings.UTF8
		  
		  while not s.EndOfFile()
		    
		    var line as String = s.ReadLine()
		    
		    if line.contains( "<key>Tracks</key>" ) then
		      
		      self.handleTracks( s )
		      
		    end if
		    
		  wend
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub viaXML(f as FolderItem)
		  var x as XmlDocument = new XmlDocument( f )
		  
		  // System.DebugLog( x.ChildCount.ToString() )
		  
		  var docNode As XmlNode = x.Child( 0 )
		  
		  var dictNode As XmlNode = docNode.Child( 0 )
		  
		  var tracksNode As XmlNode = dictNode.Child( 17 )
		  
		  // System.DebugLog( tracksNode.ChildCount.ToString() )
		  
		  var prefixToStripOff as String = "file://"
		  
		  for i as Integer = 1 to tracksNode.ChildCount - 1 step 2
		    
		    var trackDictNode As XmlNode = tracksNode.Child( i )
		    
		    var name as String = ""
		    var artist as String = ""
		    var album as String = ""
		    var location as String = ""
		    
		    var pathFound as Boolean = false
		    
		    for j as Integer = 0 to trackDictNode.ChildCount - 1
		      
		      var node as XmlNode = trackDictNode.Child( j )
		      
		      select case node.ToString()
		        
		      case "<key>Name</key>"
		        
		        var nextNode as XmlNode = trackDictNode.Child( j + 1 )
		        
		        var textNode as XmlNode = nextNode.Child( 0 )
		        
		        name = DecodeURLComponent( textNode.Value, Encodings.UTF8 )
		        
		      case "<key>Artist</key>"
		        
		        var nextNode as XmlNode = trackDictNode.Child( j + 1 )
		        
		        var textNode as XmlNode = nextNode.Child( 0 )
		        
		        artist = DecodeURLComponent( textNode.Value, Encodings.UTF8 )
		        
		      case "<key>Album</key>"
		        
		        var nextNode as XmlNode = trackDictNode.Child( j + 1 )
		        
		        var textNode as XmlNode = nextNode.Child( 0 )
		        
		        album = DecodeURLComponent( textNode.Value, Encodings.UTF8 )
		        
		      case "<key>Location</key>"
		        
		        pathFound = true
		        
		        var nextNode as XmlNode = trackDictNode.Child( j + 1 )
		        
		        var textNode as XmlNode = nextNode.Child( 0 )
		        
		        location = DecodeURLComponent( textNode.Value, Encodings.UTF8 )
		        
		      end select
		      
		    next
		    
		    if not pathFound then
		      
		      self.TextAreaFiles.AddText( name + " - " + artist + " - " + album + EndOfLine )
		      
		    else
		      
		      location = location.Middle( prefixToStripOff.Length() )
		      
		      var test as FolderItem = new FolderItem( location, FolderItem.PathModes.Native )
		      
		      if not test.Exists then
		        
		        self.TextAreaFiles.AddText( name + " - " + artist + " - " + album + " - " + location + EndOfLine )
		        
		      end if
		      
		    end if
		    
		  next
		  
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events PushButtonStream
	#tag Event
		Sub Action()
		  if self.LabelPath.Text = "" then
		    
		    return
		    
		  end if
		  
		  var start as DateTime = DateTime.Now()
		  
		  self.TextAreaFiles.AddText( "TextStream start: " + start.SQLDateTime + EndOfLine + EndOfLine )
		  
		  self.viaStream( new FolderItem( self.LabelPath.Text, FolderItem.PathModes.Native ) )
		  
		  var ended as DateTime = DateTime.Now()
		  
		  self.TextAreaFiles.AddText( "Done: " + ended.SQLDateTime + EndOfLine + EndOfLine )
		  
		  var diff as DateInterval = ended - start
		  
		  self.TextAreaFiles.AddText( "Time: " + diff.Minutes.ToString() + " minutes, " + diff.Seconds.ToString() + " seconds" + EndOfLine + EndOfLine )
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButtonXML
	#tag Event
		Sub Action()
		  if self.LabelPath.Text = "" then
		    
		    return
		    
		  end if
		  
		  var start as DateTime = DateTime.Now()
		  
		  self.TextAreaFiles.AddText( "XML start: " + start.SQLDateTime + EndOfLine + EndOfLine )
		  
		  self.viaXML(new FolderItem( self.LabelPath.Text, FolderItem.PathModes.Native ) )
		  
		  var ended as DateTime = DateTime.Now()
		  
		  self.TextAreaFiles.AddText( "Done: " + ended.SQLDateTime + EndOfLine + EndOfLine )
		  
		  var diff as DateInterval = ended - start
		  
		  self.TextAreaFiles.AddText( "Time: " + diff.Minutes.ToString() + " minutes, " + diff.Seconds.ToString() + " seconds" + EndOfLine + EndOfLine )
		  
		  // very roughly 40 seconds for XML versus 12 for stream
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButtonClear
	#tag Event
		Sub Action()
		  self.TextAreaFiles.Text = ""
		  
		  self.updateButtons()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LabelPath
	#tag Event
		Sub Open()
		  me.Text = ""
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButtonSelect
	#tag Event
		Sub Action()
		  var f As FolderItem = FolderItem.ShowOpenFileDialog( XMLFilesOnly.All )
		  
		  if f <> nil Then
		    
		    var sizeInK as Integer  = f.Length / 1024
		    
		    var sizeInM as Integer  = sizeInK / 1024
		    
		    self.TextAreaFiles.AddText( f.NativePath + " - Created: " + f.CreationDateTime.SQLDateTime + " , size: " + sizeInK.ToString() + "K (" + sizeInM.ToString() + "M)" + EndOfLine + EndOfLine )
		    
		    self.LabelPath.Text = f.NativePath
		    
		  else
		    
		    self.TextAreaFiles.AddText( "Select XML document cancelled" + EndOfLine + EndOfLine )
		    
		  end if
		  
		  self.updateButtons()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
		EditorType="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="MenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
