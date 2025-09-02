import 'package:flutter/material.dart';
import 'package:my_siswa/home.dart';
import 'package:my_siswa/profile.dart';

class SchoolPage extends StatefulWidget {
  const SchoolPage({super.key});

  @override
  State<SchoolPage> createState() => _SchoolPageState();
}

class _SchoolPageState extends State<SchoolPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "School",
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueAccent,
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        HomePage(username: AutofillHints.username),
                  ),
                );
              },
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              color: Colors.white,
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(5),
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Icon(
                        Icons.calendar_today_outlined,
                        color: Colors.blueAccent,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Makan Nasi Goreng",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text("Deskripsi Ini ada disini"),
                        ],
                      ),
                    ),
                    Text("17 Agustus 2026", style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(5),
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Icon(
                        Icons.calendar_today_outlined,
                        color: Colors.blueAccent,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Makan Ayam Goreng",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text("Deskripsi Ini ada disini"),
                        ],
                      ),
                    ),
                    Text("17 Agustus 2026", style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(5),
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Icon(
                        Icons.calendar_today_outlined,
                        color: Colors.blueAccent,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Makan Seblak",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text("Deskripsi Ini ada disini"),
                        ],
                      ),
                    ),
                    Text("17 Agustus 2026", style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
