import 'package:flutter/material.dart';

// Dummy user data for demonstration
final List<String> users = [
  'Alice',
  'Bob',
  'Charlie',
  'David',
  'Eva',
];

class UserSearchPage extends StatefulWidget {
  final String searchQuery;

  const UserSearchPage({Key? key, this.searchQuery = ''}) : super(key: key);

  @override
  _UserSearchPageState createState() => _UserSearchPageState();
}

class _UserSearchPageState extends State<UserSearchPage> {
  late String _searchQuery;

  @override
  void initState() {
    super.initState();
    _searchQuery = widget.searchQuery;
  }

  @override
  Widget build(BuildContext context) {
    final filteredUsers = users
        .where((user) => user.toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: filteredUsers.isNotEmpty
          ? ListView.builder(
              itemCount: filteredUsers.length,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                  leading: Icon(Icons.person, color: Colors.white),
                  title: Text(
                    filteredUsers[index],
                    style: TextStyle(color: Colors.white),
                  ),
                  tileColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                );
              },
            )
          : Center(
              child: Text(
                'No users found',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
    );
  }
}
