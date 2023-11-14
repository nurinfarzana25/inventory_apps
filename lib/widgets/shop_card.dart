import 'package:flutter/material.dart';
import 'package:inventory_apps/screens/menu.dart';
import 'package:inventory_apps/screens/inventory_form.dart';
import 'package:inventory_apps/screens/inventory_page.dart';

class ShopCard extends StatelessWidget {
  final ShopItem item;

  const ShopCard(this.item, {super.key}); // Constructor

    Color getColor() {
      // Menentukan warna berdasarkan nama item
      if (item.name == "Lihat Item") {
        return Colors.blue; // Ganti warna sesuai keinginan
      } else if (item.name == "Tambah Item") {
        return Colors.green; // Ganti warna sesuai keinginan
      } else if (item.name == "Logout") {
        return Colors.red; // Ganti warna sesuai keinginan
      } else {
        return Colors.indigo; // Warna default
      }
    }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: getColor(),
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
          // Navigate ke route yang sesuai (tergantung jenis tombol)
          if (item.name == "Tambah Item") {
            // Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup ShopFormPage.
            Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShopFormPage(),
                  ));
          }

          if (item.name == "Lihat Item") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductListPage(productList: productList)
              ));
          }
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}