import 'package:flutter/material.dart';
import 'gamedetail.dart';

class GameList extends StatefulWidget {
  @override
  _GameListState createState() => _GameListState();
}

class _GameListState extends State<GameList> {
  String selectedCategory = 'All';
  TextEditingController searchController = TextEditingController();

  bool cafeBelongsToCategory(Game game, String category) {
    Map<String, List<String>> categoryMap = {
      'September': [
        'Starfield',
        'Monster Hunter Now',
        'Payday 3',
        'Counter-Strike 2',
      ],
      'October': ['Assasins Creed Mirage', 'Forza Motorsport 7'],
      'November': [
        'Warcraft rumble',
        'Football Manager 2024',
        'CODMW3',
        'Batman : Arkham Trilogy',
      ],
      'Desember': [
        'SteamWorld Build',
        'House Flipper 2',
      ],
    };

    return categoryMap[category]?.contains(game.name) ?? false;
  }

  Widget buildCategoryIcon(String category, IconData icon) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedCategory = category;
        });
      },
      child: Column(
        children: [
          Icon(
            icon,
            color: selectedCategory == category
                ? Color.fromARGB(255, 0, 0, 0)
                : Color.fromARGB(255, 0, 0, 0),
          ),
          Text(
            category,
            style: TextStyle(fontFamily: 'Poppins', color: Colors.black),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Game> games = [
      Game(
          name: 'Starfield',
          genre: 'Action RPG',
          releasedate: 'September 1, 2023',
          platform: 'PC,XBSX',
          description:
              'Starfield is an action role-playing video game. The player can switch between a first-person and third-person perspective at any time. The game features an open world in the form of an area within the Milky Way galaxy, containing both fictional and non-fictional planetary systems.',
          image: 'ST.jpg'),
      Game(
          name: 'Monster Hunter Now',
          genre: 'RPG',
          releasedate: 'September 14, 2023',
          platform: 'Android,iOS,macOS,Linux,PC',
          description:
              'Embark on a global quest to track down and hunt some of the most formidable monsters from the Monster Hunter universe as they appear in our world. Forge powerful weapons and team up with fellow hunters to track down larger-than-life monsters and take them head-on.',
          image: 'MHN.jpg'),
      Game(
        name: 'Payday 3',
        genre: 'FPS',
        releasedate: 'September 18, 2023',
        platform: 'PC,XBSX,PS5',
        description:
            'Payday 3 is a first-person shooter game developed by Starbreeze Studios and published by Deep Silver. The game is a sequel to Payday 2, and is the third installment in the Payday series. It was released for PlayStation 5, Windows, and Xbox Series X/S on 21 September 2023. It received mixed reviews from critics.',
        image: 'PD3.jpg',
      ),
      Game(
        name: 'Counter-Strike 2',
        genre: 'FPS',
        releasedate: 'September 27, 2023',
        platform: 'PC',
        description:
            'Counter-Strike 2 features major technical improvements over Global Offensive. The Counter-Strike 2 update moved the game from the Source game engine to Source 2, introduced "responsive smokes" that could be interacted with, and redesigned versions of classic series maps.',
        image: 'CS2.jpg',
      ),
      Game(
          name: 'Assasins Creed Mirage',
          genre: 'Action-Adventure',
          releasedate: 'October 5, 2023',
          platform: 'PC,XBSX,PS5,PS4,IOS,XBOne,XBSS',
          description:
              'In Mirage, you play as Basim Ibn Ishaq, a street thief who gets caught up in the world of Assassins, known as Hidden Ones in this game, and their eternal enemies the Templars or Order of the Ancients. One of the first enjoyable aspects of Mirage is Basim hardcore parkour abilities.',
          image: 'Assasins.jpg'),
      Game(
          name: 'Forza Motorsport 7',
          genre: 'Racing',
          releasedate: 'October 10, 2023',
          platform: 'PC,XBSS,XBSX',
          description:
              'Forza Motorsport 7 is where Racers, Drifters, Drag Racers, Tuners, and Creators come together in a community devoted to everything automotive. Drive the cars of your dreams, with more than 700 amazing vehicles to choose from including the largest collection of Ferraris, Porsches, and Lamborghinis ever.',
          image: 'FM7.jpg'),
      Game(
          name: 'Warcraft Rumble',
          genre: 'Action-Stategy',
          releasedate: 'November 3, 2023',
          platform: 'iOS,Android',
          description:
              'Warcraft® Rumble™ is a mobile action strategy game set within the Warcraft universe where collectible Minis come to life to battle in frantic melee skirmishes. Play in multiple modes, including the single player campaign, going head-to-head in epic PvP battles, and more.',
          image: 'WR.jpg'),
      Game(
          name: 'Football Manager 2024',
          genre: 'Simulation,Strategy,Sports',
          releasedate: 'November 6, 2023',
          platform: 'PC, macOS,Xbox,Nintendo Switch,Playstation',
          description:
              'Football Manager 2024, the latest in the long-running series, promises several changes including better transfers and finances. You will also be able to import your saves from Football Manager 2023. Or if things have gone particularly badly for your team you may not want to.',
          image: 'FM2024.jpg'),
      Game(
          name: 'CODMW 3',
          genre: 'FPS',
          releasedate: 'November 8, 2023',
          platform: 'PC,Xbox,Playstation',
          description:
              'The third installment in the Modern Warfare branch of the Call of Duty franchise, Modern Warfare 3 features a heavy focus on multiplayer gameplay which includes innovative new functionality that encourages multiple gameplay combat strategies, a new 2-player co-op option, new play modes, weapons and more.',
          image: 'CODMW3.jpg'),
      Game(
          name: 'Batman : Arkham Trilogy',
          genre: 'Adventure,Fighting,Platform',
          releasedate: 'November 27, 2023',
          platform: 'iOS,PC,Nintendo 3DS,OS X, PS3',
          description:
              'Batman: Arkham Trilogy is a compilation of Rocksteady Studios award-winning videogames that brings together the critically acclaimed Batman: Arkham Asylum, Batman: Arkham City, Batman: Arkham Knight, and all previously released downloadable content (DLC) in one iconic package for Nintendo Switch.',
          image: 'BAT.jpg'),
      Game(
          name: 'SteamWorld Build',
          genre: 'City-building',
          releasedate: 'December 1, 2023',
          platform: 'PC,XBox,Playstation,Nintendo Switch',
          description:
              'SteamWorld Build is a cross-genre video game. The first part of the game tasks the players to construct and manage a mining town on an alien planet. Players need to construct roads, infrastructure, amenities, and houses for their population.',
          image: 'SWB.jpg'),
      Game(
          name: 'House Flipper 2',
          genre: 'Casual, Indie, Simulation',
          releasedate: 'December 14, 2023',
          platform: 'Playstation 5,Xbox,PC',
          description:
              'House Flipper 2 introduces new mechanics and revamps the ones from the original game. The good old hammer, the trusty paint roller, and the sturdy mop, all await your return! The new visuals make our fixer-uppers look crisp as never before! Why renovate a house when you can just build one?',
          image: 'HF2.jpg'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Game',
          style: TextStyle(fontFamily: 'Poppins'),
        ),
        backgroundColor: Color.fromARGB(255, 9, 19, 132),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10.0),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.grey[200],
              ),
              child: TextField(
                controller: searchController,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search Game',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildCategoryIcon('September', Icons.calendar_month_rounded),
              buildCategoryIcon('October', Icons.calendar_month_rounded),
              buildCategoryIcon('November', Icons.calendar_month_rounded),
              buildCategoryIcon('Desember', Icons.calendar_month_rounded),
            ],
          ),
          const SizedBox(height: 10.0),
          Expanded(
            child: ListView.builder(
              itemCount: games.length,
              itemBuilder: (context, index) {
                Game game = games[index];

                bool categoryCondition = selectedCategory == 'All' ||
                    cafeBelongsToCategory(game, selectedCategory);

                bool searchCondition = searchController.text.isEmpty ||
                    game.name
                        .toLowerCase()
                        .contains(searchController.text.toLowerCase());

                if (categoryCondition && searchCondition) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GameDetail(game: game),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                ListTile(
                                  leading: SizedBox(
                                    width: 80.0,
                                    height: 200.0,
                                    child: Image.asset(
                                      'assets/${game.image}',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  title: Text(
                                    game.name,
                                    style: TextStyle(fontFamily: 'Poppins'),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        game.genre,
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: const Color.fromARGB(
                                                255, 0, 0, 0)),
                                      ),
                                      Text(
                                        'Release Date: ${game.releasedate}', // Gantilah game.releaseDate dengan properti yang sesuai
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: const Color.fromARGB(
                                                255, 0, 0, 0)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                } else {
                  return Container();
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
