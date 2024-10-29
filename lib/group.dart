import 'package:flutter/material.dart';

class GroupPage extends StatelessWidget {
  const GroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CLUBS'),
        backgroundColor: const Color(0xFFE64833),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2, // 2 containers per row
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: List.generate(10, (index) {
            return GestureDetector(
              onTap: () {
                // Navigate to the ClubDetailPage with corresponding club details
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ClubDetailPage(
                      name: names[index],
                      image: images[index],
                      description: descriptions[index],
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          images[index], // Load the corresponding image
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        names[index], // Display the corresponding name
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

// Details Page for the Clubs
class ClubDetailPage extends StatelessWidget {
  final String name;
  final String image;
  final String description;

  const ClubDetailPage({
    Key? key,
    required this.name,
    required this.image,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: const Color(0xFFE64833),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(image, height: 200, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  description,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// List of images and names
final List<String> images = [
  'assets/pus.jpg',//1
  'assets/pus.jpg',//2
  'assets/pus.jpg',//3
  'assets/pus.jpg',//4
  'assets/pus.jpg',//5
  'assets/pus.jpg',//6
  'assets/pus.jpg',//7
  'assets/pus.jpg',//8
  'assets/pus.jpg',//9
  'assets/pus.jpg',//10
];

final List<String> names = [
  'OMEGA CLUB',
  'ROTRACT ',
  'GAMING ',
  'MUSIC CLUB',
  'CODING CLUB',
  'MUSIC CLUB',
  'CRICKET',
  'COLORING',
  'START UP ',
  'TEACHING CLUB',
];

// Add descriptions for each club
final List<String> descriptions = [
  'The Omega Club focuses on leadership and community service, bringing together individuals with a passion for making a difference. Members are encouraged to take on leadership roles within the club, organizing events, and working collaboratively on various initiatives. The club is built on the foundation of fostering personal growth, leadership development, and teamwork. Through workshops, guest lectures, and team-building activities, members are equipped with the tools to become effective leaders both within the club and in their personal lives. The club also engages in community service projects, partnering with local organizations to address social issues, such as education, poverty alleviation, and environmental conservation. Omega Club members find fulfillment in giving back to the community while developing skills that will serve them in future endeavors. For more information or to sign up, visit: [Omega Club Form](https://example.com/omega-club-form)',

  'Rotaract Club aims to promote social activities and networking opportunities for young professionals and students. It is part of the global Rotaract movement, which focuses on service, leadership, and fellowship. The club organizes events such as social mixers, career networking sessions, and community service projects that help members develop interpersonal skills and create meaningful connections. Members participate in international exchanges, volunteer at local non-profits, and work on initiatives related to health, education, and peace-building. The club fosters a sense of camaraderie, allowing members to develop both personally and professionally. By participating in Rotaract, individuals build their leadership potential while contributing to a larger global effort for positive change. For more details, visit: [Rotaract Club Form](https://example.com/rotaract-club-form)',

  'Gaming Club is a haven for game enthusiasts and e-sports players who want to dive deep into the world of gaming. Whether you are interested in console gaming, PC gaming, or mobile games, the club provides a space to connect with like-minded individuals. Members can participate in casual gaming sessions, competitive tournaments, and game development workshops. The club also focuses on exploring the broader gaming culture, including discussions on gaming history, emerging trends, and the role of gaming in entertainment and education. For those passionate about e-sports, the Gaming Club organizes leagues and inter-university competitions, providing opportunities to develop team strategy and gaming expertise. It’s a perfect space for fun, learning, and connecting with the global gaming community. To join, visit: [Gaming Club Form](https://example.com/gaming-club-form)',

  'Music Club allows members to explore and create music in a collaborative and supportive environment. Whether you are a beginner or an experienced musician, the club welcomes individuals with diverse musical interests, from classical to contemporary genres. Members are encouraged to showcase their talents during performances, collaborate on projects, and take part in music composition workshops. The club also invites guest musicians and industry professionals to give insights into the music industry, helping aspiring musicians refine their skills. Music Club offers jam sessions, music appreciation events, and live performances throughout the year, providing a platform for musicians to grow and share their love for music. Whether you’re a vocalist, instrumentalist, or simply a music enthusiast, this club offers a creative outlet for all. For more information, visit: [Music Club Form](https://example.com/music-club-form)',

  'Coding Club is for those passionate about coding and software development. The club offers a platform for coders of all skill levels to come together, collaborate on projects, and improve their coding abilities. Through coding challenges, hackathons, and coding marathons, members get to practice their skills and build real-world applications. The Coding Club also offers workshops on various programming languages, frameworks, and tools, helping members stay up-to-date with the latest technologies. Whether you are interested in web development, mobile app development, or artificial intelligence, the Coding Club provides resources and mentorship to help members advance their technical skills. It is a great space for budding developers to network, share knowledge, and work on innovative tech solutions. To get involved, visit: [Coding Club Form](https://example.com/coding-club-form)',

  'Cricket Club brings together players for practice and tournaments, fostering a love for the game in both seasoned players and beginners. Whether you\'re looking to play for fun or competitively, the club offers opportunities to participate in regular practice sessions and friendly matches. The Cricket Club also organizes tournaments where teams compete in a friendly yet competitive spirit. Coaches and experienced players offer tips on technique, strategy, and fitness, helping members improve their performance on the field. In addition to promoting physical fitness and teamwork, the club is also a social hub where members bond over their shared passion for cricket. It’s an ideal platform for cricket lovers to enhance their skills, stay active, and build lifelong friendships. For registration, visit: [Cricket Club Form](https://example.com/cricket-club-form)',

  'Coloring Club encourages creativity and artistic expression through a variety of coloring and art activities. The club offers members a space to relax and unwind while exploring their artistic side. Whether it’s traditional coloring with pencils and markers or experimenting with digital art tools, members can engage in creative projects that help relieve stress and inspire imagination. The club also organizes art workshops and group sessions where members can collaborate on larger art pieces or participate in art challenges. Coloring Club is open to all, regardless of skill level, and is a great way for members to explore art as a form of self-expression and relaxation. It’s a peaceful and inclusive environment that nurtures creativity and offers a break from the pressures of daily life. To join, visit: [Coloring Club Form](https://example.com/coloring-club-form)',

  'Startup Club fosters entrepreneurship and business innovation by providing a platform for aspiring entrepreneurs to develop their business ideas. The club offers mentorship, networking opportunities, and resources to help members turn their startup concepts into reality. Through workshops on business planning, marketing, finance, and pitching, members learn the essentials of launching and running a successful startup. The club also connects members with industry professionals, investors, and successful entrepreneurs who share their experiences and offer guidance. Startup Club hosts events such as pitch competitions, startup weekends, and networking sessions that help members gain exposure and receive feedback on their business ideas. It’s the perfect environment for anyone looking to take the first step into the world of entrepreneurship. For more details, visit: [Startup Club Form](https://example.com/startup-club-form)',

  'Teaching Club focuses on tutoring and community teaching efforts, bringing together individuals who are passionate about education. The club organizes tutoring sessions for students of all ages, covering a wide range of subjects. Members are encouraged to volunteer their time and expertise to help students who need academic assistance. In addition to tutoring, the club also engages in broader educational initiatives, such as organizing workshops and study groups, both within the club and in partnership with local schools. Teaching Club members are dedicated to making a positive impact on the academic success of students, while also developing their teaching skills. It’s a great platform for anyone who believes in the power of education and wants to contribute to the community by sharing knowledge. To get involved, visit: [Teaching Club Form](https://example.com/teaching-club-form)',
];
