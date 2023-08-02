import 'package:flutter/material.dart';

class AddItemPage extends StatelessWidget {
  const AddItemPage({Key? key}) : super(key: key);

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
      body: const additemPageBody(),
    );
  }
}

class additemPageBody extends StatefulWidget {
  const additemPageBody({Key? key}) : super(key: key);

  @override
  State<additemPageBody> createState() => _additemPageBodyState();
}

class _additemPageBodyState extends State<additemPageBody> {
  selectType? seletType; // Selected Inventory object
  final List<String> items = ["Item 1", "Item 2", "Item 3", "Item 4"];

  final List<selectType> inventoryType = [
    selectType(1, 'Type1'),
    selectType(2, 'Type2'),
    selectType(3, 'Type3'),
    selectType(4, 'Type4'),
  ];

  TextEditingController ItemName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
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
                    child: DropdownButton<selectType>(
                      value: seletType,
                      onChanged: (selectType? newValue) {
                        setState(() {
                          seletType = newValue!;
                        });
                      },
                      items: inventoryType.map((selectType city) {
                        return DropdownMenuItem<selectType>(
                          value: city,
                          child: Text(city.name),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Item Name:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            // Container(
            //   padding: const EdgeInsets.all(20),
            //   child: TextField(
            //     cursorColor: const Color(0xFF001C30),
            //     // Set the cursor color to #001C30
            //     controller: ItemName,
            //     decoration: const InputDecoration(
            //       enabledBorder: UnderlineInputBorder(
            //         borderSide: BorderSide(
            //             width: 2,
            //             color: Color(
            //                 0xFF001C30)), // Set the border color to #001C30
            //       ),
            //       focusedBorder: UnderlineInputBorder(
            //         borderSide: BorderSide(
            //             width: 2,
            //             color: Color(
            //                 0xFF176B87)), // Set the focused border color to #176B87
            //       ),
            //       icon: Icon(Icons.email),
            //       iconColor: Color(0xFF001C30),
            //       // Set the icon color to #001C30
            //       labelText: 'Email',
            //       labelStyle: TextStyle(
            //         color: Color(
            //             0xFF001C30), // Set the label color to #001C30
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Opening Balance:',
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
                    child: DropdownButton<selectType>(
                      value: seletType,
                      onChanged: (selectType? newValue) {
                        setState(() {
                          seletType = newValue!;
                        });
                      },
                      items: inventoryType.map((selectType city) {
                        return DropdownMenuItem<selectType>(
                          value: city,
                          child: Text(city.name),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'UOM:',
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
                    child: DropdownButton<selectType>(
                      value: seletType,
                      onChanged: (selectType? newValue) {
                        setState(() {
                          seletType = newValue!;
                        });
                      },
                      items: inventoryType.map((selectType city) {
                        return DropdownMenuItem<selectType>(
                          value: city,
                          child: Text(city.name),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'WH:',
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
                    child: DropdownButton<selectType>(
                      value: seletType,
                      onChanged: (selectType? newValue) {
                        setState(() {
                          seletType = newValue!;
                        });
                      },
                      items: inventoryType.map((selectType city) {
                        return DropdownMenuItem<selectType>(
                          value: city,
                          child: Text(city.name),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary:
                  const Color(0xFF001C30), // Set the button color to #001C30
            ),
            child: const Text('Create'),
            onPressed: () {
              {}
              ;
            },
          ),
        ),
      ],
    );
  }
}

class selectType {
  final int id;
  final String name;

  selectType(this.id, this.name);
}