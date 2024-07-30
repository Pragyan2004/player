import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/compounents/neu_box.dart';
import 'package:untitled1/modules/playlist_provider.dart';
class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PlaylistProvider>(
      builder: (context, value, child) {
        final playlist=value.playlist;
        final currentSong=playlist[value.currentSongIndex??0];

        return Scaffold(
            backgroundColor: Theme
                .of(context)
                .colorScheme
                .background,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.arrow_back),
                        ),
                        const Text("P L A Y L I S T",
                          style: TextStyle(fontWeight: FontWeight.bold),),
                        IconButton(onPressed: () {},
                          icon: const Icon(Icons.menu),
                        ),
                      ],
                    ),
                    NeuBox(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(currentSong.albumArtImagePath,
                              fit: BoxFit.cover,
                            ),
                          ),
                           Padding(
                            padding: EdgeInsets.all(15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(currentSong.songName,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                    ),),
                                    Text(currentSong.artistName)
                                  ],
                                ),
                                Icon(Icons.favorite,
                                  color: Colors.redAccent,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("0:00"),
                              Icon(Icons.shuffle),
                              Icon(Icons.repeat),
                              Text("2:40"),
                            ],
                          ),
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              thumbShape: const RoundSliderThumbShape(
                                enabledThumbRadius: 0,
                              )
                          ),
                          child: Slider(
                            min: 0,
                            max: 100,
                            value: 30,
                            activeColor: Colors.green,
                            onChanged: (value) {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      children: [
                        Expanded(
                            child: GestureDetector(
                              onTap: ()=>Navigator.pop(context),
                              child: NeuBox(
                                child: Icon(Icons.skip_previous),
                              ),
                            )),
                        SizedBox(width: 25),
                        Expanded(
                            flex: 2,
                            child: GestureDetector(
                              onTap: () {},
                              child: NeuBox(
                                child: Icon(Icons.pause),
                              ),
                            )),
                        SizedBox(width: 25),
                        Expanded(
                            child: GestureDetector(
                              onTap: (){},
                              child: NeuBox(
                                child: Icon(Icons.skip_next),
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            )
        );
      },
    );
  }
}

