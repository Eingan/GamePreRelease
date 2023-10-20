import 'package:flutter/material.dart';

class Game {
  final String name;
  final String genre;
  final String description;
  final String image;
  final String releasedate;
  final String platform;

  Game({
    required this.name,
    required this.genre,
    required this.releasedate,
    required this.description,
    required this.image,
    required this.platform,
  });
}

class GameDetail extends StatelessWidget {
  final Game game;

  const GameDetail({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String gameImageFileName = game.image.replaceAll(' ', '');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Game Detail', style: TextStyle(fontFamily: 'Poppins')),
        backgroundColor: const Color.fromARGB(255, 9, 19, 132),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/$gameImageFileName',
              fit: BoxFit.cover,
              height: 200,
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    game.name,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    children: [
                      const Icon(Icons.gamepad_outlined,
                          color: Color.fromARGB(255, 0, 0, 0)),
                      const SizedBox(width: 5),
                      Text(
                        'Genre : ${game.genre}',
                        style: const TextStyle(
                            fontFamily: 'Poppins',
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5.0),
                  Row(
                    children: [
                      const Icon(Icons.monitor,
                          color: Color.fromARGB(255, 0, 0, 0)),
                      const SizedBox(width: 5),
                      Text(
                        'Platform :  ${game.platform}',
                        style: const TextStyle(
                            fontFamily: 'Poppins',
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5.0),
                  Row(
                    children: [
                      const Icon(Icons.access_time,
                          color: Color.fromARGB(255, 0, 0, 0)),
                      const SizedBox(width: 5),
                      Text(
                        'Release Date : ${game.releasedate}',
                        style: const TextStyle(
                            fontFamily: 'Poppins',
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    game.description,
                    style: const TextStyle(fontFamily: 'Poppins'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
