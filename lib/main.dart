import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: ThemeData(
        primaryColor: Colors.white, // Background color
        fontFamily: 'Roboto', // Font family
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFE6E6FA), Colors.white],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Circular Logo
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.deepPurple[200],
                ),
                child: Center(
                  child: Text(
                    'Logo',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 40.0),

              // Login Container
              GestureDetector(
                onTap: () {
                  // Action for clicking on login container
                  // This can redirect to donate or FlutterFlow points
                  // Insert your navigation logic here
                },
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.deepPurple[100],
                  ),
                  child: Column(
                    children: [
                      // Login Form Widgets go here

                      // Example TextFormFields for Username and Password
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Username',
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                        ),
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40.0),

              // Login Agreement Tick
              Row(
                children: [
                  Checkbox(
                    value: true, // Customize based on your needs
                    onChanged: (bool? value) {},
                  ),
                  Text(
                    'I agree to the terms and conditions',
                    style: TextStyle(color: Colors.deepPurple[300]),
                  ),
                ],
              ),
              SizedBox(height: 40.0),

              // Sign-In Buttons
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DonatePage()),
                  );
                },
                style:
                    ElevatedButton.styleFrom(primary: Colors.deepPurple[200]),
                child: Text('Donate'),
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  // Action for signing in to FlutterFlow points
                  // Insert your navigation logic here
                },
                style:
                    ElevatedButton.styleFrom(primary: Colors.deepPurple[200]),
                child: Text('Free Food points near me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DonatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donate'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Fill in your details to donate:',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),

            // Example TextFormFields for Name, Phone Number, Address, Pincode, and ID Proof
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Your Name',
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Address',
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Pincode',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'ID Proof (optional)',
              ),
            ),
            SizedBox(height: 20.0),

            ElevatedButton(
              onPressed: () {
                // Action to proceed to donation options page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DonationOptionsPage()),
                );
              },
              style: ElevatedButton.styleFrom(primary: Colors.deepPurple[200]),
              child: Text('Proceed'),
            ),
          ],
        ),
      ),
    );
  }
}

class DonationOptionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donation Options'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'What would you like to donate?',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),

            // Donation options buttons
            ElevatedButton(
              onPressed: () {
                // Action for donating vegetables
              },
              style: ElevatedButton.styleFrom(primary: Colors.deepPurple[200]),
              child: Text('Vegetables'),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                // Action for donating fruits
              },
              style: ElevatedButton.styleFrom(primary: Colors.deepPurple[200]),
              child: Text('Fruits'),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                // Action for donating leftovers
              },
              style: ElevatedButton.styleFrom(primary: Colors.deepPurple[200]),
              child: Text('Leftovers'),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                // Action for donating prepared items
              },
              style: ElevatedButton.styleFrom(primary: Colors.deepPurple[200]),
              child: Text('Prepared Items'),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                // Action for donating to community kitchen
              },
              style: ElevatedButton.styleFrom(primary: Colors.deepPurple[200]),
              child: Text('Community Kitchen'),
            ),
          ],
        ),
      ),
    );
  }
}

class FlutterFlowPointsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Map Image
          Image.asset(
            'assets/map_background.jpg', // Replace with your map image asset
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 40.0),

                // Find Free Food Points Near Me Button
                ElevatedButton(
                  onPressed: () {
                    // Action for finding free food points near me
                    // Show message if no points found in 10km radius
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('No Free Food Points Found'),
                          content: Text(
                              'Sorry, no free food points found in a 10km radius.'),
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
                  },
                  style:
                      ElevatedButton.styleFrom(primary: Colors.deepPurple[200]),
                  child: Text('Find Free Food Points Near Me'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
