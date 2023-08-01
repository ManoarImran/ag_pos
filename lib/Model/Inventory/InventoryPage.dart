import 'package:flutter/material.dart';

class InventoryPage extends StatelessWidget {
  const InventoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF001C30),
        title: const Text(
          'Inventory',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
      body: const InventoryPageBody(),
    );
  }
}


class InventoryPageBody extends StatefulWidget {
  const InventoryPageBody({Key? key}) : super(key: key);

  @override
  State<InventoryPageBody> createState() => _InventoryPageBodyState();
}

class _InventoryPageBodyState extends State<InventoryPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.yellow);
  }
}
