// lib/services/teacher_data_service.dart

import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:http/http.dart' as http;

class TeacherDataService {
  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<List<Teacher>> getTeachers() async {
    final ref = _storage.ref('teachers_data.csv');
    final file = await ref.getDownloadURL();
    final response = await http.get(Uri.parse(file));
    final csvData = response.body;
    final teachers = csvData.split('\n').skip(1).map((row) => Teacher.fromJson(row)).toList();
    return teachers;
  }
}

class Teacher {
  final String name;
  final String email;
  final String subject;
  final String phone;

  Teacher({this.name, this.email, this.subject, this.phone});

  factory Teacher.fromJson(String json) {
    final values = json.split(',');
    return Teacher(
      name: values,
      email: values,
      subject: values,
      phone: values,
    );
  }
}