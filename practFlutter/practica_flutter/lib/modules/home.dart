import 'package:flutter/material.dart';
import 'package:practica_flutter/modules/stories.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> item = {
      'image': 'assets/images/insta.png',
      'user': 'Nombre usuario',
      'likes': 45,
      'description': 'descripcion del post :)'
    };
    final Map<String, dynamic> item2 = {
      'image': 'assets/images/user-profile.jpg',
      'user': 'Lana del rey',
      'likes': 45000,
      'description': 'descripcion del post :)'
    };
    final Map<String, dynamic> storie = {
      'image': 'assets/images/user-profile.jpg'
    };
    final Map<String, dynamic> storie2 = {
      'image': 'assets/images/user-profile.jpg'
    };
    final Map<String, dynamic> storie3 = {
      'image': 'assets/images/insta.png'
    };
    final List items = [item, item2, item];
    final List stories = [storie, storie2, storie3, storie, storie2, storie3];
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/insta.png',
          width: 130,
          height: 90,
        ),
        backgroundColor: const Color.fromARGB(255, 255, 7, 243),
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: 
              List.generate(stories.length, (index){
                  return Stories(image: stories[index]['image']);
              }),
            ),
          ),
          Expanded(
            child: ListView(
              children: List.generate(items.length, (index) {
                return Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 30.0,
                              backgroundImage: AssetImage(items[index]['image']),
                            ),
                          ),
                          Column(
                            children: [
                              Text(items[index]['user']),
                            ],
                          ),
                          const Spacer(),
                          const Icon(Icons.more_vert),
                        ],
                      ),
                      Image.asset(
                        items[index]['image'],
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.favorite),
                            Icon(Icons.comment),
                            Icon(Icons.share),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text('${items[index]['likes']} Me gusta'),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(items[index]['description']),
                      )
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
