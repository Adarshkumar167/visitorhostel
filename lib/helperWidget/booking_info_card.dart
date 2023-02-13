import 'package:flutter/material.dart';
import 'package:visitor_hostel/helperWidget/booking_info_tile.dart';

class BookingInfoCard extends StatelessWidget {
  final List<BookingInfoTile> bookingInfoTiles;

  const BookingInfoCard({super.key, required this.bookingInfoTiles});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: bookingInfoTiles,
        ),
      ),
    );
  }
}
