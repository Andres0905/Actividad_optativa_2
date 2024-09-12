import 'package:class_activity/src/feactures/widgets/drawer.dart';
import 'package:class_activity/src/feactures/widgets/likes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MusicalGenres extends StatelessWidget {
  const MusicalGenres({super.key});

  final List<Genres> _genres = const [
    Genres(
        name: "Música pop",
        origin: "años 50 del siglo XX",
        country: "Gran Bretaña"),
    Genres(name: "Rocanrol", origin: "años 50 del siglo XX", country: "EEUU"),
    Genres(name: "Rock", origin: "años 50 del siglo XX", country: "EEUU")
  ];

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
              'Géneros Musicales',
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
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: _genres.length,
          itemBuilder: (context, index) {
            final genre = _genres[index];
            return Card(
              elevation: 5,
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              color: const Color.fromARGB(255, 219, 217, 217),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      genre.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text('Origen: ${genre.origin}'),
                    const SizedBox(height: 5),
                    Text('País: ${genre.country}'),
                    const SizedBox(height: 10),
                    const LikeButton(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Genres {
  final String name;
  final String origin;
  final String country;

  const Genres(
      {required this.name, required this.origin, required this.country});
}
