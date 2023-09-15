import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SafetyScreen extends StatefulWidget {
  const SafetyScreen({super.key});

  @override
  State<SafetyScreen> createState() => _SafetyScreenState();
}

class _SafetyScreenState extends State<SafetyScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
              color: Colors.white,
            ),
            iconSize: 40.0,
            onPressed: () => context.go('/'),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          title: const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'Safety',
              style: TextStyle(
                // fontFamily: kFontTypeForApp,
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () => context.go('/settings_screen'),
            ),
          ],
        ),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text:
                          'If a boat clear astern becomes overlapped within two of her hull lengths to leeward of a boat on the same tack, she shall not sail above her proper course while they remain on the same tack and overlapped within that distance, unless in doing so she promptly sailsastern of the other boat.',
                      style: TextStyle(fontSize: 12.0, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            // child: ElevatedButton(
            //   onPressed: () => context.go('/'),
            //   child: const Text('Go back to the Home screen'),
            // ),
          ),
        ),
      ),
    );
  }
}
