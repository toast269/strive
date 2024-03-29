// donate.dart
import 'package:flutter/material.dart';

class DonatePage extends StatelessWidget {
  final int selectedCircle;
  final String label;
  final String imageUrl; // Added imageUrl parameter

  DonatePage({
    required this.selectedCircle,
    required this.label,
    required this.imageUrl, // Added imageUrl parameter
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donate'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Color(0xffffffff),
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            _buildSelectedContainer(),
            SizedBox(height: 20),
            _buildInputDetails(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showThanksPopup(context);
              },
              child: Text('Proceed'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSelectedContainer() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage:
                NetworkImage(imageUrl), // Use the captured imageUrl
            radius: 40,
          ),
          SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputDetails() {
    return Column(
      children: [
        _buildInputRow('Location'),
        _buildInputRow('Phone Number'),
        _buildInputRow('Aadhar Number (Optional)'),
      ],
    );
  }

  Widget _buildInputRow(String labelText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  void _showThanksPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Thank You!'),
          content: Text('Thanks for your support!'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
