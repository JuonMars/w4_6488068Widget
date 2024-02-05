import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cinema UI',
      home: MovieDetailPage(),
    );
  }
}

class MovieDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          'images/logo.png', // Replace with your asset image path
          fit: BoxFit.cover,
          height: 50, // Set the height that suits your logo design
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  // Background image
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/totoro.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Content
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Colors.black, Colors.transparent],
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'My Neighbor Totoro',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '1988 • 1h 27m • ALL',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'While spending a summer in the Japanese countryside with their father, two young sisters befriend mystical creatures who live in the nearby forest.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Director: Hayao Miyazaki',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                          // Add more details as required
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Playback and Add to List buttons
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton.icon(
                      icon: Icon(Icons.play_arrow),
                      label: Text('Play'),
                      onPressed: () {
                        // Handle play button press
                      },
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: OutlinedButton.icon(
                      icon: Icon(Icons.add),
                      label: Text('Add To List'),
                      onPressed: () {
                        // Handle add to list button press
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
