import 'package:flutter/material.dart';
import 'package:flutter_techcamp_day1/post_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String gambar1 = "ini gambar satu";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            gambar1 = "aku diubah";
          });
        },
        child: Icon(Icons.send),
      ),
      body: ListView(
        children: const [
          PostContainer(
            uploader: "ABC",
            postImage:
                "https://images.unsplash.com/photo-1589182373726-e4f658ab50f0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80",
          ),
          PostContainer(
            uploader: "DEF",
            postImage:
                "https://asset.kompas.com/crops/WTHN0IO-O8OLgU0XDFIW8uteUBc=/0x9:955x646/780x390/data/photo/2021/10/28/617ac9336946e.jpg",
          ),
          PostContainer(
            uploader: "GHI",
            postImage:
                "https://awsimages.detik.net.id/community/media/visual/2022/03/31/tersesat-di-hutan-amazon-1.jpeg?w=700&q=90",
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile")
      ]),
    );
  }
}
