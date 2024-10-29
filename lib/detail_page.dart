import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String imagePath;
  final String imageName;
  final String imageDescription;

  const DetailPage({
    required this.imagePath,
    required this.imageName,
    required this.imageDescription,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Define unique consultation details for each category
    final Map<String, String> consultationInfo = {
      "Artificial Intelligence": "For AI king, consult Prof. John Doe at the Computer Science Department, Room 301.",
      "Web Devlopment": "For Web Development, consult Ms. Jane Smith in the IT Department, Room 202.",
      "Virtual Reality": "For Virtual Reality, reach out to Dr. Alex Green at the VR Lab, Room 404.",
      "App Development": "For App Development guidance, consult Mr. Robert Lee in the Mobile Tech Department, Room 505.",
      "Cloud 2": "For Cloud-related inquiries, meet Dr. Emma Davis in the Cloud Tech Division, Room 303.",
      "I O T": "For IoT, consult Ms. Laura White at the IoT Innovation Center, Room 208.",
      "Data Science": "For Data Science studies, consult Mr. David Martin in the Data Analytics Department, Room 609.",
      "Cyber Security": "For Cyber Security, reach out to Mr. Michael Brown at the Cyber Defense Center, Room 706.",
      "Devops": "For DevOps, meet Mr. Kevin Grey in the DevOps Hub, Room 507.",
      "Game development": "For Game Development, contact Ms. Sarah Black in the Game Design Studio, Room 310.",
      "carrer  development": "For Game Development, contact Ms. Sarah Black in the Game Design Studio, Room 310.",
      "placement Trining": "For Game Development, contact Ms. Sarah Black in the Game Design Studio, Room 310.",
      "Resume Building": "For Game Development, contact Ms. Sarah Black in the Game Design Studio, Room 310.",
    };

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF003F63),
        title: Text(
          imageName,
          style: const TextStyle(color: Colors.white),
        ),
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white, // Set color of icons, including the back arrow
        ),
      ),
      backgroundColor: const Color(0xFF003F63),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Improved Image UI with rounded corners and shadow
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0), // Rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow effect
                    spreadRadius: 4,
                    blurRadius: 10,
                    offset: const Offset(0, 4), // Shadow position
                  ),
                ],
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer, // Apply the rounded corners
              child: Image.asset(
                imagePath,
                width: double.infinity, // Full width of the screen
                height: 250, // Adjust height for better visual proportions
                fit: BoxFit.cover, // Ensures the image covers the area
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              imageName,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              imageDescription,
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 24.0),
            // New Container for consultation details
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: const Offset(0, 3), // Shadow position
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Consultation Information",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF003F63), // Royal blue text color
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    consultationInfo[imageName] ?? "Consultation details not available.",
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: Color(0xFF003F63), // Royal blue text color
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
