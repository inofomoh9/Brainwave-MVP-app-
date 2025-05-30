import 'package:flutter/material.dart';
import 'screens/chat_screen.dart';
import 'screens/branding_screen.dart';
import 'screens/voice_screen.dart';

void main() {
  runApp(BrainwaveApp());
}

class BrainwaveApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Brainwave',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Brainwave Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Offline Chat'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ChatScreen()),
              ),
            ),
            ElevatedButton(
              child: Text('Branding Tools'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => BrandingScreen()),
              ),
            ),
            ElevatedButton(
              child: Text('Voice Rehearsal'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => VoiceScreen()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}