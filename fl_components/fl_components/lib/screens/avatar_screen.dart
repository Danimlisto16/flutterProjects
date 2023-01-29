import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {

  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Avatars"),
        actions:  [
          Container(
            margin: const EdgeInsets.only(right: 8), //es una separacion externa a diferencia del padding
            child:  CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text("SL"),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage("https://pyxis.nymag.com/v1/imgs/dda/a72/f66d4c039e4805c6754e3591b89a52afb5-taylor-new-album.1x.rsquare.w1400.jpg"),

        ),
      ),
    );
  }
}