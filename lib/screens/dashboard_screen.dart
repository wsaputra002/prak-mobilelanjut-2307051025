import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  static const String route = '/dashboard';

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Latar belakang abu-abu muda
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.white,
        elevation: 1,
        automaticallyImplyLeading: false,
      ), // AppBar

      // COLUMN: Menyusun semua konten dari atas ke bawah
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Beri jarak dari tepi layar
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Rata kiri
          children: [
            // --- Teks Sapaan ---
            const Text(
              'Selamat Datang,',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const Text(
              'Wahyu Surya Saputra',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24), // Spasi antar elemen

            // --- Kartu Informasi Utama ---
            // CONTAINER: Berfungsi sebagai kartu dengan sudut tumpul dan bayangan
            Container(
              width: double.infinity, // Lebar kartu memenuhi layar
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ), // BoxDecoration
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ROW: Menyusun icon dan teks "Saldo"
                  Row(
                    children: [
                      Icon(
                        Icons.account_balance_wallet_outlined,
                        color: Colors.grey[500], // Icon
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Saldo Saat Ini',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ), // Row
                  const SizedBox(height: 8),
                  const Text(
                    'Rp 1.234.567',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Tombol Aksi di dalam kartu
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1E88E5),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text('Lihat Detail Transaksi'),
                    ),
                  ),
                ],
              ),
            ), // Container
          ],
        ),
      ),
    );
  }
}