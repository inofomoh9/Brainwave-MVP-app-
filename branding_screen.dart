import 'package:flutter/material.dart';

class BrandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Branding Tools')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Create your brand assets:', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _showDialog(context, 'Logo Generator', 'Feature coming soon.'),
              child: Text('Generate Logo'),
            ),
            ElevatedButton(
              onPressed: () => _showDialog(context, 'Slogan Creator', 'Feature coming soon.'),
              child: Text('Create Slogan'),
            ),
            ElevatedButton(
              onPressed: () => _showDialog(context, 'Poster Designer', 'Feature coming soon.'),
              child: Text('Design Poster'),
            ),
          ],
        ),
      ),
    );
  }

  void _showDialog(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}