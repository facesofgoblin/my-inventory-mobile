import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:my_inventory/screens/menu.dart';
import 'package:my_inventory/widgets/drawer_app.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart'; //import drawer

class InventoryAppFormPage extends StatefulWidget {
  const InventoryAppFormPage({super.key});

  @override
  State<InventoryAppFormPage> createState() => _InventoryAppFormPageState();
}

class _InventoryAppFormPageState extends State<InventoryAppFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _amount = 0;
  String _description = "";

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Form Tambah Produk',
          ),
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      //Menambahkan drawer di bawah sini
      drawer: const DrawerApp(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
            child: Column(
                //Buatlah widget TextFormField yang dibungkus oleh Padding
                //sebagai salah satu children dari widget Column
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Nama Produk",
                    labelText: "Nama Produk",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _name = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Nama tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Jumlah",
                  labelText: "Jumlah",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                //Tambahkan variabel yang sesuai
                onChanged: (String? value) {
                  setState(() {
                    _amount = int.parse(value!);
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Jumlah tidak boleh kosong!";
                  }
                  if (int.tryParse(value) == null) {
                    return "Jumlah harus berupa angka!";
                  }
                  return null;
                },
              ),
            ),
              Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Deskripsi",
                  labelText: "Deskripsi",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    // Tambahkan variabel yang sesuai
                    _description = value!;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Deskripsi tidak boleh kosong!";
                  }
                  return null;
                },
              ),
            ),
                Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.indigo),
                    ),
                  onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                          // Kirim ke Django dan tunggu respons
                          final response = await request.postJson(
                          "https://rana-koesumastuti-tugas.pbp.cs.ui.ac.id/create-flutter/",
                          jsonEncode(<String, String>{
                              'name': _name,
                              'amount': _amount.toString(),
                              'description': _description,
                          }));
                          if (response['status'] == 'success') {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                              content: Text("Produk baru berhasil disimpan!"),
                              ));
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => MyHomePage()),
                              );
                          } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                  content:
                                      Text("Terdapat kesalahan, silakan coba lagi."),
                              ));
                          }
                      }
                  },
                    child: const Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ])), //menambahkan child
      ),
    );
  }
}