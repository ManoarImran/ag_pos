import 'package:flutter/material.dart';

class ProductFullDetails extends StatelessWidget {
  const ProductFullDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF001C30),
        title: Text(
          'Product Full Details',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(color: Colors.white30, child: const ProductFullDetailsBody()),
    );
  }
}

class ProductFullDetailsBody extends StatefulWidget {
  const ProductFullDetailsBody({Key? key}) : super(key: key);

  @override
  State<ProductFullDetailsBody> createState() => _ProductFullDetailsBodyState();
}

class _ProductFullDetailsBodyState extends State<ProductFullDetailsBody> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.cyan,);
  }
}

