import 'package:flutter/material.dart';

void main() {
  runApp(const AboutPage());
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("About", style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Foto Profil dari lokal
            const CircleAvatar(
              radius: 75,
              backgroundImage: AssetImage('assets/images/rafi.jpg'),
            ),
            const SizedBox(height: 16),

            // Nama
            const Text(
              'Muhammad Rafi Indrakusumah',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),

            // Status
            const Text(
              'Mobile Developer',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 20),

            // Tentang Saya
            const Text(
              'Tentang Saya',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),

            // Deskripsi dengan border, background putih, dan margin
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                '''Saya adalah seorang mahasiswa di Institut Teknologi Garut (ITG) yang memiliki minat mendalam dalam dunia pemrograman, atau yang lebih dikenal dengan istilah ngoding. Ngoding bagi saya bukan hanya sekadar hobi, tetapi juga sebuah cara untuk mengekspresikan kreativitas dan menemukan solusi dari berbagai permasalahan. Setiap baris kode yang saya tulis adalah bagian dari perjalanan saya untuk memahami logika, algoritma, dan teknologi yang terus berkembang.''',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 75, 75, 75),
                ),
              ),
            ),
            const SizedBox(height: 120),

            // Footer
            const Text(
              "itg.ac.id © 2024",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
