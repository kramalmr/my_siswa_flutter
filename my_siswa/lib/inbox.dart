import 'package:flutter/material.dart';

class Inbox extends StatelessWidget {
  const Inbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text("Inbox")),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.notifications_off, color: Colors.grey),
            SizedBox(height: 5),
            Text("Tidak ada Notifikasi", style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
