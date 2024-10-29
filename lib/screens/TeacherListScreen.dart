// lib/screens/TeacherListScreen.dart

import 'package:flutter/material.dart';
import 'package:cabin/services/teacher_data_service.dart';

class TeacherListScreen extends StatefulWidget {
  @override
  _TeacherListScreenState createState() => _TeacherListScreenState();
}

class _TeacherListScreenState extends State<TeacherListScreen> {
  List<Teacher> _teachers = [];
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadTeachers();
  }

  _loadTeachers() async {
    setState(() {
      _isLoading = true;
    });
    final teachers = await TeacherDataService().getTeachers();
    setState(() {
      _teachers = teachers;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teacher List'),
      ),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _teachers.length,
              itemBuilder: (context, index) {
                final teacher = _teachers[index];
                return ListTile(
                  title: Text(teacher.name),
                  subtitle: Text(teacher.email),
                  onTap: () {
                    // Display teacher details
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TeacherDetails(teacher)),
                    );
                  },
                );
              },
            ),
    );
  }
}

class TeacherDetails extends StatelessWidget {
  final Teacher teacher;

  TeacherDetails(this.teacher);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(teacher.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(teacher.email),
            Text(teacher.subject),
            Text(teacher.phone),
          ],
        ),
      ),
    );
  }
}