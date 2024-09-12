import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildImageContainer(),
            const SizedBox(height: 20),
            buildTextField(),
            const SizedBox(height: 20),
            buildSubmitButton(context),
            const SizedBox(height: 40),
            buildQuoteText(),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.black,
      title: const Text(
        "La Música",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }

  Widget buildImageContainer() {
    return Container(
      padding: const EdgeInsets.all(100.0),
      child: Image.network(
          "https://i.pinimg.com/564x/c6/a8/7b/c6a87b1e024016b55c5141447bf449bf.jpg"),
    );
  }

  Widget buildTextField() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 100),
      child: const TextField(
        style: TextStyle(color: Colors.white),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          label: Text.rich(TextSpan(children: <InlineSpan>[
            WidgetSpan(
              child: Text(
                'Nombre',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            WidgetSpan(
              child: Text(
                '*',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ])),
        ),
      ),
    );
  }

  Widget buildSubmitButton(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => context.push('/mge'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        ),
        child: const Text("INGRESAR"),
      ),
    );
  }

  Widget buildQuoteText() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(
        "'Una cosa buena que tiene la música, es que cuando llega te olvidas de los problemas'. Bob Marley",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
    );
  }
}
