import 'package:flutter/material.dart';
import 'package:latihan_2/model/poli.dart';
import 'package:latihan_2/ui/poli_form.dart';
import 'package:latihan_2/ui/poli_item.dart';
import 'package:latihan_2/widget/sidebar.dart';

class PoliPage extends StatefulWidget {
  const PoliPage ({super.key});

  @override
  State<PoliPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Sidebar(),
      appBar: AppBar(
        title: const Text("Data Poli"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PoliForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          PoliItem(poli: Poli(namaPoli: "Poli Anak")),
          PoliItem(poli: Poli(namaPoli: "Poli Kandungan")),
          PoliItem(poli: Poli(namaPoli: "Poli Gigi")),
          PoliItem(poli: Poli(namaPoli: "Poli THT")),
        ],
      ),
    );
  }
}