import 'package:flutter/material.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF001C30),
        title: const Text(
          'Reports',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
      body: const ReportPageBody(),
    );
  }
}

class ReportPageBody extends StatefulWidget {
  const ReportPageBody({Key? key}) : super(key: key);

  @override
  State<ReportPageBody> createState() => _ReportPageBodyState();
}

class _ReportPageBodyState extends State<ReportPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.deepPurple,);
  }
}

