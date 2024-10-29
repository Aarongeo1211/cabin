import 'package:flutter/material.dart';

class TeacherDetailPage extends StatelessWidget {
  final String name;
  final String image;
  final String availability;
  final String timetable;

  const TeacherDetailPage({
    required this.name,
    required this.image,
    required this.availability,
    required this.timetable,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF003366), // Royal blue background
      appBar: AppBar(
        title: Text(name),
        backgroundColor: const Color(0xFF0FA4AF), // Darker royal blue
        elevation: 10,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(image),
                radius: 70.0,
                backgroundColor: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Name: $name',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Availability: $availability',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Timetable:',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FullImagePage(imagePath: timetable),
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  timetable,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 250, // Adjust height as needed
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FullImagePage extends StatelessWidget {
  final String imagePath;

  const FullImagePage({required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: InteractiveViewer(
          panEnabled: true, // Enable pan
          boundaryMargin: const EdgeInsets.all(20),
          minScale: 0.5, // Minimum zoom scale
          maxScale: 4.0, // Maximum zoom scale
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
