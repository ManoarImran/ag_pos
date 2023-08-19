import 'package:flutter/material.dart';

class dealersListPage extends StatelessWidget {
  const dealersListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF001C30),
        title: const Text(
          'Dealers List',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(color: Colors.white, child:  dealersListBody()),
    );
  }
}

class dealersListBody extends StatefulWidget {
  const dealersListBody({Key? key}) : super(key: key);

  @override
  State<dealersListBody> createState() => _dealersListBodyState();
}

class _dealersListBodyState extends State<dealersListBody> {

  final List<String> ListItems = [
    '001',
    '002',
    '003',
    '004',
    '005',
    '006',
    '007',
    '008',
    '009',
    '010',
  ];
  @override
  Widget build(BuildContext context) {
    return  Column( mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.cyan, // Set the button color to #001C30
            ),
            child: const Text('Submit All'),
            onPressed: () {
              {
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => HomePage()),
                // );
              }
            },
          ),
        ),

        Expanded(
          child: SizedBox(
            // height: 500,
            child: ListView.builder(
              itemCount: ListItems.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 10,
                  child: ListTile(
                    title: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("ID ${ListItems[index]}"),
                        // SizedBox(width: 20),
                        Text("Name")
                      ],
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Email',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'abcde@gmail.com',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),

                        Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Amount',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                            // SizedBox(width: 20),
                            Flexible(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: SizedBox( height: 40,
                                  child: TextField(
                                    cursorColor: Colors.black,
                                    // Set the cursor color to #001C30
                                    // controller: ItemName,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 0.5,
                                            color: Colors.black), // Set the border color to #001C30
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(width: 0.5, color: Colors.black),
                                        // Set the focused border color to #176B87
                                      ),
                                      // hintText: 'Enter amount',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ), // Add more value fields as needed
                      ],
                    ),
                    // onTap: () {
                    //   // Do something when an item is tapped
                    // },
                  ),
                );
              },
            ),
          ),
        ),

        //DataTable---------------------


        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: DataTable(
        //     columns: [
        //       DataColumn(label: Text('ID')),
        //       DataColumn(label: Text('Name')),
        //       DataColumn(label: Text('Number')),
        //       DataColumn(label: Text('Email')),
        //       DataColumn(label: Text('Amount')),
        //     ],
        //     rows: [
        //       DataRow(cells: [
        //         DataCell(Text('002')),
        //         DataCell(Text('John')),
        //         DataCell(Text('0000001')),
        //         DataCell(Text('121@gmail.com')),
        //         DataCell(TextField(
        //           decoration: InputDecoration(
        //             // labelText: 'Enter your name',
        //             border: OutlineInputBorder(),
        //           ),
        //         ),),
        //       ]),
        //       DataRow(cells: [
        //         DataCell(Text('003')),
        //         DataCell(Text('John')),
        //         DataCell(Text('0000001')),
        //         DataCell(Text('121@gmail.com')),
        //         DataCell(TextField(
        //           decoration: InputDecoration(
        //             // labelText: 'Enter your name',
        //             border: OutlineInputBorder(),
        //           ),
        //         ),),
        //       ]),
        //       DataRow(cells: [
        //         DataCell(Text('004')),
        //         DataCell(Text('John')),
        //         DataCell(Text('0000001')),
        //         DataCell(Text('121@gmail.com')),
        //         DataCell(TextField(
        //           decoration: InputDecoration(
        //             // labelText: 'Enter your name',
        //             border: OutlineInputBorder(),
        //           ),
        //         ),),
        //       ]),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
