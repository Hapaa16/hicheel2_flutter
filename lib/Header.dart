import 'package:flutter/material.dart';

class HeaderStack extends StatelessWidget {
  const HeaderStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [containerOne(), ImageCenter()],
    );
  }

  Widget containerOne() {
    return Container(
      height: 100,
      color: Colors.orange,
    );
  }

  Widget ImageCenter() {
    String url =
        "https://i1.sndcdn.com/artworks-vlGokC6VzgKQOcgq-qR7QyQ-t500x500.jpg";
    return Positioned(
        left: 0,
        right: 0,
        top: 50,
        child: Center(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: [BoxShadow(color: Colors.blue)],
                image: DecorationImage(
                    image: NetworkImage(url), fit: BoxFit.cover)),
          ),
        ));
  }
}
