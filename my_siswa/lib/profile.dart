import 'package:flutter/material.dart';
import 'package:my_siswa/home.dart';
import 'package:my_siswa/school.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SchoolPage()),
                );
              },
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
      body: Center(
        child: Container(
          padding: EdgeInsets.all(50),
          width: 400,
          height: 400,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 2.0),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset("assets/profileDummy.png"),
                  ),
                  Text("Username", style: TextStyle(fontSize: 25)),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Kelas :", style: TextStyle()),
                  Text("10 A", style: TextStyle()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Halaqoh :", style: TextStyle()),
                  Text("Imam Mahfuzh", style: TextStyle()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Alamat :", style: TextStyle()),
                  Text("Jakarta", style: TextStyle()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Email :", style: TextStyle()),
                  Text("rusdi3198@gmail.com", style: TextStyle()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Nomor HP :", style: TextStyle()),
                  Text("081234567890", style: TextStyle()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
