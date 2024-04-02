import 'package:flutter/material.dart';
import 'package:flutter_masonry_view/flutter_masonry_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final List<Map<String, String>> _items = [
    {
      'image': 'assets/images/foto1.jpg',
      'title': 'Title 1',
      'description': 'Description 1'
    },
    {
      'image': 'assets/images/foto2.jpg',
      'title': 'Title 2',
      'description': 'Description 2'
    },
    {
      'image': 'assets/images/foto3.jpg',
      'title': 'Title 3',
      'description': 'Description 3'
    },
    {
      'image': 'assets/images/foto4.jpg',
      'title': 'Title 5',
      'description':
          'Description 5 Description 5Description 5Description 5Description 5'
    },
    {
      'image': 'assets/images/foto5.jpg',
      'title': 'Title 4',
      'description': 'Description 4'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
      ),
      body: SingleChildScrollView(
        child: MasonryView(
          listOfItem: _items,
          numberOfColumn: 2,
          itemBuilder: (item) {
            return CardProfile(item: item);
          },
        ),
      ),
    );
  }
}

class CardProfile extends StatelessWidget {
  const CardProfile({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Map<String, String> item;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 240, 205, 234),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            item['image']!,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.only(left: 8, top: 2, right: 2, bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['title']!,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4),
                Text(
                  item['description']!,
                  style: TextStyle(fontSize: 14),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
