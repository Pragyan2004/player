import 'package:flutter/cupertino.dart';
import 'package:untitled1/modules/song.dart';

class PlaylistProvider extends ChangeNotifier{
  //playlist of song
  final List<Song> _playlist=[
    Song(
        songName: "Taxas",
        artistName: "BigXthaPlug",
        albumArtImagePath: "assets/images/1.png",
        audioPath: "assets/song/chill.mp3",
    ),
    Song(
      songName: "My Eyes",
      artistName: "Travis Scott",
      albumArtImagePath: "assets/images/2.png",
      audioPath: "assets/song/chill.mp3",
    ),
    Song(
      songName: "Overdue",
      artistName: "Metro Boomin",
      albumArtImagePath: "assets/images/3.png",
      audioPath: "assets/song/chill.mp3",
    ),
    Song(
      songName: "OurTime",
      artistName: "Lil Tecca",
      albumArtImagePath: "assets/images/4.png",
      audioPath: "assets/song/chill.mp3",
    ),
    Song(
      songName: "Hurt Me",
      artistName: "Juice WRLD",
      albumArtImagePath: "assets/images/5.png",
      audioPath: "assets/song/chill.mp3",
    ),
    Song(
      songName: "The Color Violet",
      artistName: "Toney Lanez",
      albumArtImagePath: "assets/images/6.png",
      audioPath: "assets/song/chill.mp3",
    ),
    Song(
      songName: "Riot",
      artistName: "XXXTENTACION",
      albumArtImagePath: "assets/images/7.png",
      audioPath: "assets/song/chill.mp3",
    ),
    Song(
      songName: "Watch this",
      artistName: "Lil Uzi",
      albumArtImagePath: "assets/images/8.png",
      audioPath: "assets/song/chill.mp3",
    ),

    Song(
      songName: "if u think i'm preety",
      artistName: "Artemas",
      albumArtImagePath: "assets/images/9.png",
      audioPath: "assets/song/chill.mp3",
    ),
    Song(
      songName: "Heaven Or Hell",
      artistName: "Don Toliver",
      albumArtImagePath: "assets/images/10.png",
      audioPath: "assets/song/chill.mp3",
    ),
    Song(
      songName: "down With Me",
      artistName: "Lil Tecca",
      albumArtImagePath: "assets/images/11.png",
      audioPath: "assets/song/chill.mp3",
    ),
    Song(
      songName: "Lace It",
      artistName: "Juice WRLD",
      albumArtImagePath: "assets/images/12.png",
      audioPath: "assets/song/chill.mp3",
    ),


  ];

  int? _currentSongIndex;

  List<Song>get playlist=>_playlist;
  int? get currentSongIndex =>_currentSongIndex;


  set currentSongIndex(int? newIndex){
    _currentSongIndex=newIndex;
    notifyListeners();
  }
}
