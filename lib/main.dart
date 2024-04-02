import 'package:flutter/material.dart';
import 'package:flutter_masonry_view/flutter_masonry_view.dart';
import 'package:profile_app/widgets/CardProfile.dart';

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
        backgroundColor: Color.fromARGB(255, 231, 154, 218),
        title: const Text('Gallery'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: MasonryView(
            listOfItem: _items,
            numberOfColumn: 2,
            itemBuilder: (item) {
              return CardProfile(item: item);
            },
          ),
        ),
      ),
    );
  }
}
