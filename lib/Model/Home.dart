import 'package:flutter/material.dart';

import 'Inventory/InventoryPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF001C30),
        title: const Center(
          child: Text(
            'HOME',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: const HomePageBody(),
    );
  }
}

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 3,
        children: [
          buildGridButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => InventoryPage()));
            },
            color: Colors.amber,
            imageAsset: 'assets/Inventory.png',
            label: "Inventory",
          ),
          buildGridButton(
            onPressed: () {
              // Code for Sales button's onPressed
              // Navigator.push(context, MaterialPageRoute(builder: (context) => const LeaveApplication()));
            },
            color: Colors.red,
            imageAsset: 'assets/sales.png',
            label: "Sales",
          ),
          buildGridButton(
            onPressed: () {
              // Code for Accounts button's onPressed
              // Navigator.push(context, MaterialPageRoute(builder: (context) => const AttendanceReportPage()));
            },
            color: Colors.green,
            imageAsset: 'assets/accounts.png',
            label: "Accounts",
          ),
          buildGridButton(
            onPressed: () {
              // Code for Reports button's onPressed
              // Navigator.push(context, MaterialPageRoute(builder: (context) => const MovementApplicationPage()));
            },
            color: Colors.deepPurple,
            imageAsset: 'assets/report.png',
            label: "Reports",
          ),
          buildGridButton(
            onPressed: () {
              // Code for Purchase button's onPressed
              // Navigator.push(context, MaterialPageRoute(builder: (context) => const DealerOrder()));
            },
            color: Colors.indigo,
            imageAsset: 'assets/purchase.png',
            label: "Purchase",
          ),
        ],
      ),
    );
  }

  Widget buildGridButton({
    required VoidCallback onPressed,
    required Color color,
    required String imageAsset,
    required String label,
  }) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith((states) => color)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(imageAsset),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(2, 0, 3, 4),
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
