import 'package:flutter/material.dart';
import 'main.dart';

class NearFoodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find Food'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          width: 300,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.red[100], // Light red color
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildLabel('Name', 'Anand Kumar'),
              _buildLabel('Location', 'Narengi, Guwahati-26'),
              _buildLabel('Phone Number', '9878922411'),
              _buildLabel('Item', 'Prepared Item'),
              _buildLabel('Distance', '5.2 Away'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$title:',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(value),
        SizedBox(height: 10),
      ],
    );
  }
}
