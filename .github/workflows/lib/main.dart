import 'package:flutter/material.dart';

void main() {
  runApp(const OliveEdit());
}

class OliveEdit extends StatelessWidget {
  const OliveEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OLIVE EDIT',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF080A07),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF6B7F32),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF080A07),
        title: const Text(
          'OLIVE EDIT',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),

            const Text(
              'CREATE. EDIT. INSPIRE.',
              style: TextStyle(
                color: Color(0xFF91A94B),
                letterSpacing: 2,
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              'Your Creative Studio',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6B7F32),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('NEW PROJECT'),
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              'EDITING TOOLS',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),

            const SizedBox(height: 20),

            const Wrap(
              spacing: 15,
              runSpacing: 15,
              children: [
                ToolButton(Icons.content_cut, 'Trim'),
                ToolButton(Icons.music_note, 'Audio'),
                ToolButton(Icons.title, 'Text'),
                ToolButton(Icons.auto_awesome, 'Effects'),
                ToolButton(Icons.speed, 'Speed'),
                ToolButton(Icons.filter, 'Filters'),
              ],
            ),

            const Spacer(),

            const Center(
              child: Text(
                'OLIVE EDIT',
                style: TextStyle(
                  color: Color(0xFF91A94B),
                  letterSpacing: 4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ToolButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const ToolButton(this.icon, this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      height: 85,
      decoration: BoxDecoration(
        color: const Color(0xFF191D15),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: const Color(0xFF91A94B)),
          const SizedBox(height: 8),
          Text(label),
        ],
      ),
    );
  }
}
