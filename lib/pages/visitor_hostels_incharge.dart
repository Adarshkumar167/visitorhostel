import 'package:flutter/material.dart';
import 'package:visitor_hostel/pages/cancel_request.dart';
import 'package:visitor_hostel/pages/place_request.dart';
import 'package:visitor_hostel/pages/view_bookings.dart';
import 'package:visitor_hostel/pages/completed_bookings.dart';

class VisitorHostelIncharge extends StatefulWidget {
  const VisitorHostelIncharge({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _VisitorHostelState createState() => _VisitorHostelState();
}

class _VisitorHostelState extends State<VisitorHostelIncharge> {
  bool _isDropdownVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const Icon(Icons.menu, color: Colors.white),
        title: const Text("Visitor Hostel"),
        backgroundColor: Colors.black,
        // ignore: prefer_const_literals_to_create_immutables
        actions: <Widget>[
          const Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text("I"),
            ),
          ),
        ],
        elevation: 0,
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
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 24.0),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: MaterialButton(
                        height: 60.0,
                        onPressed: () {
                          setState(() {
                            _isDropdownVisible = !_isDropdownVisible;
                          });
                        },
                        color: Colors.white,
                        textColor: const Color.fromARGB(255, 59, 59, 59),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            topRight: Radius.circular(5.0),
                            bottomLeft: Radius.circular(5.0),
                            bottomRight: Radius.circular(5.0),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Text('Manage Bookings',
                                style: TextStyle(fontSize: 18.0)),
                            Icon(
                                _isDropdownVisible
                                    ? Icons.arrow_drop_up
                                    : Icons.arrow_drop_down,
                                color: Colors.grey),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    _isDropdownVisible
                        ? Padding(
                            padding: const EdgeInsets.only(bottom: 16.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5.0),
                                  topRight: Radius.circular(5.0),
                                  bottomLeft: Radius.circular(5.0),
                                  bottomRight: Radius.circular(5.0),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0.0, 2.0),
                                    blurRadius: 6.0,
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  children: <Widget>[
                                    const SizedBox(height: 9.0),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const ViewBookings()),
                                        );
                                      },
                                      child: const Text("Bookings"),
                                    ),
                                    const SizedBox(height: 9.0),
                                    const Divider(
                                      thickness: 1.0,
                                    ),
                                    const SizedBox(height: 9.0),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const CancelledBookings()),
                                        );
                                      },
                                      child:
                                          const Text("Cancellation Requests"),
                                    ),
                                    const SizedBox(height: 9.0),
                                    const Divider(
                                      thickness: 1.0,
                                    ),
                                    const SizedBox(height: 9.0),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const CompletedBookings()),
                                        );
                                      },
                                      child: const Text("Completed Bookings"),
                                    ),
                                    const SizedBox(height: 9.0),
                                  ],
                                ),
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: MaterialButton(
                          height: 60.0,
                          onPressed: () {},
                          color: Colors.white,
                          textColor: Colors.black,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              topRight: Radius.circular(5.0),
                              bottomLeft: Radius.circular(5.0),
                              bottomRight: Radius.circular(5.0),
                            ),
                          ),
                          child: const Text('Booking Form',
                              style: TextStyle(fontSize: 18.0))),
                    ),
                    const SizedBox(height: 16.0),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: MaterialButton(
                          height: 60.0,
                          onPressed: () {},
                          color: Colors.white,
                          textColor: Colors.black,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              topRight: Radius.circular(5.0),
                              bottomLeft: Radius.circular(5.0),
                              bottomRight: Radius.circular(5.0),
                            ),
                          ),
                          child: const Text('Get Details',
                              style: TextStyle(fontSize: 18.0))),
                    ),
                    const SizedBox(height: 16.0),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: MaterialButton(
                          height: 60.0,
                          onPressed: () {},
                          color: Colors.white,
                          textColor: Colors.black,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              topRight: Radius.circular(5.0),
                              bottomLeft: Radius.circular(5.0),
                              bottomRight: Radius.circular(5.0),
                            ),
                          ),
                          child: const Text('Meals Record',
                              style: TextStyle(fontSize: 18.0))),
                    ),
                    const SizedBox(height: 16.0),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: MaterialButton(
                          height: 60.0,
                          onPressed: () {},
                          color: Colors.white,
                          textColor: Colors.black,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              topRight: Radius.circular(5.0),
                              bottomLeft: Radius.circular(5.0),
                              bottomRight: Radius.circular(5.0),
                            ),
                          ),
                          child: const Text('Inventory',
                              style: TextStyle(fontSize: 18.0))),
                    ),
                    const SizedBox(height: 16.0),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: MaterialButton(
                          height: 60.0,
                          onPressed: () {},
                          color: Colors.white,
                          textColor: Colors.black,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              topRight: Radius.circular(5.0),
                              bottomLeft: Radius.circular(5.0),
                              bottomRight: Radius.circular(5.0),
                            ),
                          ),
                          child: const Text('Accounts',
                              style: TextStyle(fontSize: 18.0))),
                    ),
                    const SizedBox(height: 16.0),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: MaterialButton(
                          height: 60.0,
                          onPressed: () {},
                          color: Colors.white,
                          textColor: Colors.black,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              topRight: Radius.circular(5.0),
                              bottomLeft: Radius.circular(5.0),
                              bottomRight: Radius.circular(5.0),
                            ),
                          ),
                          child: const Text('Bill Details',
                              style: TextStyle(fontSize: 18.0))),
                    ),
                    const SizedBox(height: 16.0),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: MaterialButton(
                          height: 60.0,
                          onPressed: () {},
                          color: Colors.white,
                          textColor: Colors.black,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              topRight: Radius.circular(5.0),
                              bottomLeft: Radius.circular(5.0),
                              bottomRight: Radius.circular(5.0),
                            ),
                          ),
                          child: const Text('Rules and Regulations',
                              style: TextStyle(fontSize: 18.0))),
                    ),
                    const SizedBox(height: 16.0),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: MaterialButton(
                          height: 60.0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PlaceRequest()),
                            );
                          },
                          color: const Color.fromARGB(255, 243, 33, 33),
                          textColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              topRight: Radius.circular(5.0),
                              bottomLeft: Radius.circular(5.0),
                              bottomRight: Radius.circular(5.0),
                            ),
                          ),
                          child: const Text('Place Request',
                              style: TextStyle(fontSize: 18.0))),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
