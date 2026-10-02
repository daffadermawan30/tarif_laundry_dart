void main() {
  print(hitungLaundry(1.5, Layanan.reguler));
  print(hitungLaundry(2, Layanan.reguler));
  print(hitungLaundry(3, Layanan.express));
  print(hitungLaundry(5.5, Layanan.express));
}

enum Layanan { reguler, express }

String hitungLaundry(double berat, Layanan layanan) {
  // Jika berat di bawah 2 kg, maka tetap dihitung 2 kg
  if (berat < 2) {
    berat = 2;
  }

  // Tarif Rp7.000 per kg
  double tarifDasar = berat * 7000;

  // Tambahan biaya untuk layanan express
  double tambahanExpress = 0;

  if (layanan == Layanan.express) {
    tambahanExpress = tarifDasar * 0.50;
  }

  double totalTarif = tarifDasar + tambahanExpress;

  return 'Berat: $berat kg | Layanan: ${layanan.name} | Total: Rp${totalTarif.toStringAsFixed(0)}';
}
