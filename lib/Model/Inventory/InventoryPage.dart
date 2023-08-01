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
      body: Container(
        color: Colors.yellow, // Set the background color to yellow
        child: const InventoryPageBody(),
      ),
    );
  }
}

class InventoryPageBody extends StatefulWidget {
  const InventoryPageBody({Key? key}) : super(key: key);

  @override
  State<InventoryPageBody> createState() => _InventoryPageBodyState();
}

class _InventoryPageBodyState extends State<InventoryPageBody> {
  City? _selectedCity; // Selected city object

  final List<City> _cities = [
    City(1, 'Raw'),
    City(2, 'Finished Good'),
    City(3, 'Assets'),
    City(4, 'Materials'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Type:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton<City>(
                      value: _selectedCity,
                      onChanged: (City? newValue) {
                        setState(() {
                          _selectedCity = newValue!;
                        });
                      },
                      items: _cities.map((City city) {
                        return DropdownMenuItem<City>(
                          value: city,
                          child: Text(city.name),
                        );
                      }).toList(),
                    ),
                  ),
                  // SizedBox(height: 20),
                  // _selectedCity != null
                  //     ? Text(
                  //         'Selected City: ${_selectedCity!.name}',
                  //         style: TextStyle(fontSize: 20),
                  //       )
                  //     : Text(''),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class City {
  final int id;
  final String name;

  City(this.id, this.name);
}
