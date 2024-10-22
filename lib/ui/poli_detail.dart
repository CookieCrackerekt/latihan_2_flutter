import 'package:flutter/material.dart';
import 'package:latihan_2/model/poli.dart';
import 'package:latihan_2/ui/poli_page.dart';
import 'package:latihan_2/ui/poli_update_form.dart';

class PoliDetail extends StatefulWidget {
  final Poli poli;
  const PoliDetail({super.key, required this.poli});

  @override
  State<PoliDetail> createState() => _PoliDetailState();
}

class _PoliDetailState extends State<PoliDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Poli"),),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text("Nama poli : ${widget.poli.namaPoli}",
          style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [_tombolUbah(),_tombolHapus()],
          )
        ],
      ),
    );
  }
  _tombolUbah(){
    return ElevatedButton(
      onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PoliUpdateForm(poli: widget.poli)));
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
      child: const Text("ubah"));
  } 
  _tombolHapus(){
    return ElevatedButton(
      onPressed: (){
        AlertDialog alertDialog = AlertDialog(
          content: const Text("Yakin ingin dihapus?"),
          actions: [
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const PoliPage()));
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text("YA"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green), 
              child: const Text("Tidak"),
              )
          ],
        );
        showDialog(context: context, builder: (context) => alertDialog);
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
      child: const Text("Hapus"));
  }
}
