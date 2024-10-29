import 'package:flutter/material.dart';
import 'detail_page.dart'; // Import the DetailPage

class CareerPage extends StatelessWidget {
  const CareerPage({super.key});

  @override
  Widget build(BuildContext context) {
    // List of image assets, names, and descriptions
    final List<Map<String, String>> imageAssets = [
      {
  "path": "assets/ai 2.avif",
  "name": "Artificial Intelligence",
  "description": "Artificial Intelligence (AI) is a transformative field that enables machines to learn and make decisions. After studying AI, individuals can develop skills in automation, machine learning, and data-driven problem-solving. They can apply AI techniques in industries like healthcare, finance, and technology, enhancing decision-making, improving operational efficiency, and innovating new solutions. Outcomes include proficiency in creating intelligent systems, enhancing business processes through automation, and contributing to cutting-edge research and product development, leading to impactful career opportunities in AI-driven sectors."
},

      {'path': 'assets/web dev.avif', 'name': 'Web Devlopment', 'description': 'Next, focus on data collection and preprocessing, ensuring quality and relevance. Develop AI models using appropriate algorithms and frameworks, and continuously test and refine them.'},
      {'path': 'assets/virtual.jpg', 'name': 'Virtual Reality', 'description': 'Integrate AI solutions into existing systems and monitor performance to ensure effectiveness. Invest in ongoing training and skill development for teams.'},
      {'path': 'assets/app dev.png', 'name': 'App Development', 'description': 'Finally, stay updated with emerging technologies and ethical considerations to maintain a competitive edge and address societal impacts responsibly.'},
      {'path': 'assets/cloud 2.jpeg', 'name': 'Cloud Development', 'description': 'Detailed description related to Cloud 2 image.'},
      {'path': 'assets/iot.avif', 'name': 'I O T ', 'description': 'Detailed description related to Cloud 3 image.'},
      {'path': 'assets/dta 3.png', 'name': 'Data Science', 'description': 'Detailed description related to Cyber 2 image.'},
      {'path': 'assets/cyber 3.jpeg', 'name': 'Cyber Security', 'description': 'Detailed description related to Cyber 3 image.'},
      {'path': 'assets/devops 2.jpeg', 'name': 'Devops', 'description': 'Detailed description related to Cyber image.'},
      {'path': 'assets/game 3.jpg', 'name': 'Game development', 'description': 'Detailed description related to Data 2 image.'},
      {'path': 'assets/carrer dev.jpg', 'name': 'carrer  development', 'description': 'Detailed description related to Data 2 image.'},
      {'path': 'assets/placement.png', 'name': 'placement Trining', 'description': 'Detailed description related to Data 2 image.'},
      {'path': 'assets/resume.jpg', 'name': 'Resume Building', 'description': 'Detailed description related to Data 2 image.'},
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF003F63), // Background color for the scaffold
      appBar: AppBar(
        backgroundColor: const Color(0xFF003F63),
        title: const Text(
          'Career Opportunities',
          style: TextStyle(
            color: Colors.white, // White text for the AppBar
          ),
        ),
        centerTitle: true,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white, // Set color of icons, including the back arrow
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: imageAssets.length,
        itemBuilder: (context, index) {
          final image = imageAssets[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    imagePath: image['path']!,
                    imageName: image['name']!,
                    imageDescription: image['description']!,
                  ),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              decoration: BoxDecoration(
                color: Colors.white, // White background for each container
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: const Offset(0, 2), // Shadow position
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      image['path']!,
                      width: double.infinity, // Full width of the container
                      height: 200, // Fixed height for consistent display
                      fit: BoxFit.cover, // Ensures the image covers the container
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      image['name']!,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFE64833),

                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
