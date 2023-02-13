import 'package:flutter/material.dart';
import 'package:visitor_hostel/helperWidget/app_bar.dart';
import 'package:visitor_hostel/helperWidget/booking_info_card.dart';
import 'package:visitor_hostel/helperWidget/booking_info_tile.dart';

class CompletedBookings extends StatefulWidget {
  const CompletedBookings({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CompletedBookingsState createState() => _CompletedBookingsState();
}

class _CompletedBookingsState extends State<CompletedBookings> {
  List<Map<String, dynamic>> bookingData = [
    {
      'Intender': 'Bob',
      'BookingFrom': '21st Jan',
      'BookingTo': '28th Jan',
      'Category': 'B',
      'Status': 'Completed'
    },
    {
      'Intender': 'Jane',
      'BookingFrom': '22nd Jan',
      'BookingTo': '29th Jan',
      'Category': 'A',
      'Status': 'InComplete'
    },
    {
      'Intender': 'Bob',
      'BookingFrom': '21st Jan',
      'BookingTo': '28th Jan',
      'Category': 'B',
      'Status': 'Completed'
    },
    {
      'Intender': 'Jane',
      'BookingFrom': '22nd Jan',
      'BookingTo': '29th Jan',
      'Category': 'A',
      'Status': 'InComplete'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 24.0),
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 248, 247, 247),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(children: <Widget>[
                  const SizedBox(height: 24.0),
                  const Text(
                    'Completed Bookings',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Column(
                    children: List.generate(bookingData.length, (index) {
                      return Column(
                        children: [
                          const SizedBox(height: 20.0),
                          BookingInfoCard(
                            bookingInfoTiles: [
                              BookingInfoTile(
                                iconData: Icons.person,
                                label: 'Intender',
                                value: bookingData[index]['Intender'],
                                color: Colors.white,
                              ),
                              BookingInfoTile(
                                iconData: Icons.today,
                                label: "BookingFrom",
                                value: bookingData[index]['BookingFrom'],
                                color: const Color.fromARGB(255, 206, 205, 205),
                              ),
                              BookingInfoTile(
                                iconData: Icons.event,
                                label: "BookingTo",
                                value: bookingData[index]['BookingTo'],
                                color: Colors.white,
                              ),
                              BookingInfoTile(
                                iconData: Icons.category,
                                label: "Category",
                                value: bookingData[index]['Category'],
                                color: const Color.fromARGB(255, 206, 205, 205),
                              ),
                              BookingInfoTile(
                                iconData: Icons.info,
                                label: "Status",
                                value: bookingData[index]['Status'],
                                color: Colors.white,
                              )
                            ],
                          ),
                        ],
                      );
                    }),
                  )
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
