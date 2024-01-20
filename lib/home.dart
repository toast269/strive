import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'donate.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> squareImages = [
    'https://rb.gy/zix786', // Replace with your image URL
    'https://rb.gy/e9536p', // Replace with your image URL
    'https://rb.gy/z5a1ja', // Replace with your image URL
    'https://rb.gy/frcwmm', // Replace with your image URL
  ];

  int selectedCircle = 0;

  final List<String> circleLabels = [
    'Prepared Item',
    'Left Overs',
    'Fruits and Veggies',
    'Others',
  ];

  String selectedImageUrl = ''; // Added variable to capture selected image URL

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.purple,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                enlargeCenterPage: true,
              ),
              items: squareImages.map((url) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      url,
                      fit: BoxFit.cover,
                      width: 150,
                      height: 150,
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildCircleContainer(0),
                        _buildCircleContainer(1),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildLabelContainer(0),
                        _buildLabelContainer(1),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildCircleContainer(2),
                        _buildCircleContainer(3),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildLabelContainer(2),
                        _buildLabelContainer(3),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // Capture the selected image URL
                  selectedImageUrl = squareImages[selectedCircle];
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DonatePage(
                      selectedCircle: selectedCircle,
                      label: circleLabels[selectedCircle],
                      imageUrl: selectedImageUrl, // Pass the selected image URL
                    ),
                  ),
                );
              },
              child: Text('Donate'),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildCircleContainer(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCircle = index;
        });
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: selectedCircle == index ? Colors.purple : Colors.white,
          border: Border.all(
            color: Colors.purple,
            width: 2,
          ),
        ),
        child: Center(
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              squareImages[index],
            ),
            radius: 40,
          ),
        ),
      ),
    );
  }

  Widget _buildLabelContainer(int index) {
    return Container(
      width: 100,
      child: Center(
        child: Text(
          circleLabels[index],
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
