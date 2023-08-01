import 'package:flutter/material.dart';

class purchasePage extends StatelessWidget {
  const purchasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF001C30),
        title: const Text(
          'Purchase',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
      body: const purchasePageBody(),
    );
  }
}

class purchasePageBody extends StatefulWidget {
  const purchasePageBody({Key? key}) : super(key: key);

  @override
  State<purchasePageBody> createState() => _purchasePageBodyState();
}

class _purchasePageBodyState extends State<purchasePageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.indigo,);
  }
}

