import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  CardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          TopImage(),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. "),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              FlatButton(
                  onPressed: () => {print('lmao')},
                  child: Text(
                    "Touch me",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify,
                  )),
              FlatButton(
                  onPressed: () => {print('lmao')},
                  child: Text(
                    "Touch me more",
                    style: TextStyle(fontSize: 16),
                  )),
            ],
          )
        ],
      ),
    );
  }

  Widget TopImage() {
    String url =
        "https://ichef.bbci.co.uk/news/1024/branded_news/7CC2/production/_118283913_29xp-meme-mobilemasterat3x-v3.jpg";
    return Stack(
      children: [
        Ink.image(
          image: NetworkImage(url),
          height: 200,
          fit: BoxFit.cover,
        ),
        Positioned(
            bottom: 16,
            left: 16,
            child: Text(
              "Cute nila",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ))
      ],
    );
  }
}
