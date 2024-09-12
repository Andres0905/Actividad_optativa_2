import 'package:class_activity/src/feactures/widgets/drawer.dart';
import 'package:class_activity/src/feactures/widgets/likes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MusicaPop extends StatelessWidget {
  const MusicaPop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyAppDrawer(),
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            context.go('/');
          },
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(1.0),
            ),
            alignment: Alignment.bottomCenter,
            child: const Text(
              'Musica Pop',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                height: 1,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Historia de la Música Pop',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 16),
              const Text(
                'La música pop (del inglés pop music, contracción de popular music), también conocida simplemente como pop, es un género de música popular que tuvo su origen a finales de los años 1950 como una derivación del Pop tradicional, en combinación con otros géneros musicales que estaban de moda en aquel momento. Los términos música pop y música popular se usan a menudo de manera indistinta, aunque el segundo tiene un sentido más amplio al dar cabida a otros géneros distintos del pop que se consideren populares.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStbUvMWLqDcmTxcWy4U1-FwqhGAbCMVL_v9g&s',
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              const LikeButton(),
            ],
          ),
        ),
      ),
    );
  }
}
