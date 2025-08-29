import 'package:flutter/material.dart';
import 'package:my_siswa/inbox.dart';

class HomePage extends StatefulWidget {
  final String username;
  const HomePage({super.key, required this.username});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Siswa",
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Inbox()),
              );
            },
            icon: Icon(Icons.notifications, color: Colors.white),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Assalamualaikum, ${widget.username}",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Semoga harimu menyenangkan",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.amberAccent,
        child: Icon(Icons.camera_alt, color: Colors.black),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              color: Colors.white,
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {},
              color: Colors.white,
              icon: Icon(Icons.school),
            ),
            SizedBox(width: 20),
            IconButton(
              onPressed: () {},
              color: Colors.white,
              icon: Icon(Icons.calendar_month),
            ),
            IconButton(
              onPressed: () {},
              color: Colors.white,
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
