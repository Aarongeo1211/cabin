import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About',
          style: TextStyle(
            color: Colors.white, // White text for the AppBar
          ),
          
        ),
        iconTheme: const IconThemeData(
          color: Colors.white, // Set color of icons, including the back arrow
        ),
        backgroundColor: const Color(0xFF003F63),
      ),
      backgroundColor:const Color(0xFF003F63) ,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'About Us',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Welcome to the Teachers & Career app! This app is designed to provide valuable information about teachers, career opportunities, and more. Our goal is to help users find the resources they need to succeed in their educational and professional endeavors.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Features:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              '1. Explore various career options.\n'
              '2. Learn about different teaching methods.\n'
              '3. Access resources for career development.\n'
              '4. Stay updated with the latest news in education.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Contact Us:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'For more information, please reach out to us at:\n'
              'Email: pavankumarreddyrachamreddy2004@.com\n'
              'Phone: +91 9515101099\n'
              'Address: Banglore Marthalli',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
