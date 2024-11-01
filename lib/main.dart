import 'package:flutter/material.dart'; // Mengimpor paket material design dari Flutter
import 'home.dart'; // Mengimpor file home.dart yang berisi halaman Home
import 'input.dart'; // Mengimpor file input.dart yang berisi halaman Input
import 'chat.dart'; // Mengimpor file chat.dart yang berisi halaman Chat

void main() => runApp(
    const MyApp()); // Fungsi utama yang menjalankan aplikasi dengan widget MyApp

class MyApp extends StatelessWidget {
  // Mendefinisikan kelas MyApp sebagai turunan dari StatelessWidget
  const MyApp({Key? key}) : super(key: key); // Konstruktor kelas MyApp

  @override
  Widget build(BuildContext context) {
    // Metode build untuk menentukan tampilan widget
    return MaterialApp(
      // Mengembalikan widget MaterialApp
      home:
          BottomNavigationBarExample(), // Mengatur BottomNavigationBarExample sebagai halaman utama aplikasi
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  // Mendefinisikan kelas BottomNavigationBarExample sebagai turunan dari StatefulWidget
  const BottomNavigationBarExample({Key? key})
      : super(key: key); // Konstruktor kelas BottomNavigationBarExample

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState(); // Membuat state untuk BottomNavigationBarExample
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  // Mendefinisikan state untuk BottomNavigationBarExample
  int a =
      0; // Mendeklarasikan variabel a untuk menyimpan indeks halaman yang dipilih

// Mendefinisikan gaya teks
  static List<Widget> _widgetOptions = <Widget>[
    // Daftar widget yang mewakili halaman yang berbeda
    EnlargeStrategyDemo(), // Halaman Home
    InputData(), // Halaman Input
    EatRightApp(), // Halaman Chat
  ];

  void _onItemTapped(int index) {
    // Fungsi yang memperbarui indeks halaman yang dipilih saat item di BottomNavigationBar ditekan
    setState(() {
      a = index; // Memperbarui nilai a dengan indeks yang dipilih
    });
  }

  @override
  Widget build(BuildContext context) {
    // Metode build untuk menentukan tampilan widget
    return Scaffold(
      // Mengembalikan widget Scaffold yang menyediakan kerangka dasar halaman
      appBar: AppBar(
        // Menambahkan AppBar di bagian atas layar
        title: const Text(
            'contoh Bottom Navigation Bar'), // Menampilkan teks 'contoh Bottom Navigation Bar' di AppBar
      ),
      body: Center(
        // Menempatkan konten di tengah layar
        child: _widgetOptions.elementAt(
            a), // Menampilkan widget sesuai dengan indeks yang dipilih
      ),
      bottomNavigationBar: BottomNavigationBar(
        // Menambahkan BottomNavigationBar di bagian bawah layar
        items: const <BottomNavigationBarItem>[
          // Menentukan item di BottomNavigationBar
          BottomNavigationBarItem(
            // Item pertama
            icon: Icon(Icons.home), // Ikon untuk item pertama
            label: 'itenas', // Label untuk item pertama
          ),
          BottomNavigationBarItem(
            // Item kedua
            icon: Icon(Icons.input), // Ikon untuk item kedua
            label: 'input', // Label untuk item kedua
          ),
          BottomNavigationBarItem(
            // Item ketiga
            icon: Icon(Icons.person), // Ikon untuk item ketiga
            label: 'chat', // Label untuk item ketiga
          ),
        ],
        currentIndex: a, // Indeks item yang dipilih saat ini
        selectedItemColor:
            Color.fromARGB(255, 255, 0, 0), // Warna item yang dipilih
        onTap:
            _onItemTapped, // Memanggil fungsi _onItemTapped saat item di BottomNavigationBar ditekan
      ),
    );
  }
}
