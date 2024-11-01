import 'package:flutter/material.dart';

class InputData extends StatelessWidget {
  const InputData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Input',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form Input'),
        ),
        body: _InputDataForm(),
      ),
    );
  }
}

class _InputDataForm extends StatefulWidget {
  @override
  _InputDataFormState createState() => _InputDataFormState();
}

class _InputDataFormState extends State<_InputDataForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Nama Lengkap',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Nama lengkap harus diisi.';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
            ),
            validator: (value) {
              if (value == null || !value.contains('@')) {
                return 'Email tidak valid.';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Nomor Telepon',
            ),
            validator: (value) {
              if (value == null || value.length < 10) {
                return 'Nomor telepon harus lebih dari 10 digit.';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Validasi berhasil, lanjutkan proses.
              } else {
                // Validasi gagal, tampilkan pesan kesalahan.
              }
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(InputData());
}
