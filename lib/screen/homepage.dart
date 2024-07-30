import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/compounents/my_drawer.dart';
import 'package:untitled1/modules/playlist_provider.dart';
import 'package:untitled1/modules/song.dart';
import 'package:untitled1/screen/songpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late final dynamic playlistProvider;
  @override
  void initState(){
    super.initState();
    playlistProvider=Provider.of<PlaylistProvider>(context,listen: false!);
  }

  void goToSong(int songIndex){
    playlistProvider.currentSongIndex=songIndex;
    Navigator.push(
        context,
        MaterialPageRoute(builder:(context)=>const SongPage(),
        ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text("P L A Y L I S T")),
      drawer:const MyDrawer(),
      body: Consumer<PlaylistProvider>(
        builder:(context,value,child){
          final List<Song> playlist=value.playlist;
          return ListView.builder(
            itemCount: playlist.length,
            itemBuilder: (context,index){
              final Song song=playlist[index];
              return ListTile(
                title: Text(song.songName),
                subtitle:Text(song.artistName),
                leading: Image.asset(song.albumArtImagePath),
                onTap: ()=>goToSong(index),
              );
            },
          );
        }
        ),
      );
  }
}
