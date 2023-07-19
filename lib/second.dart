import 'package:flutter/material.dart';

void main() {
  runApp(MyntraApp());
}

class MyntraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyntraInsiderPage(),
    );
  }
}

class MyntraInsiderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Myntra Insider'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Welcome to Myntra Insider!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            Image.asset('assets/insider_banner.jpg'), // Placeholder image or your custom image
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Exclusive Offers',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
            Container(
              height: 200.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5, // Replace with the actual number of offers
                itemBuilder: (context, index) {
                  return Card(
                    child: Image.asset('assets/offer_$index.jpg'), // Placeholder image or your custom image
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'New Arrivals',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
            Container(
              height: 200.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5, // Replace with the actual number of new arrivals
                itemBuilder: (context, index) {
                  return Card(
                    child: Image.asset('assets/new_arrival_$index.jpg'), // Placeholder image or your custom image
                  );
                },
              ),
            ),
            // Add more sections as needed
          ],
        ),
      ),
    );
  }
}
