import 'package:flutter/material.dart';

class SalesPage extends StatelessWidget {
  const SalesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF001C30),
        title: const Text(
          'Sales',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
      body: const SalesPageBody(),
    );
  }
}

class SalesPageBody extends StatefulWidget {
  const SalesPageBody({Key? key}) : super(key: key);

  @override
  State<SalesPageBody> createState() => _SalesPageBodyState();
}

class _SalesPageBodyState extends State<SalesPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red,);
  }
}

