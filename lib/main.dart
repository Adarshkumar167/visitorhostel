import 'package:flutter/material.dart';
import 'package:visitor_hostel/pages/active_bookings.dart';
import 'package:visitor_hostel/pages/cancel_request.dart';
import 'package:visitor_hostel/pages/completed_bookings.dart';
import 'package:visitor_hostel/pages/visitors_hostel.dart';
import 'package:visitor_hostel/pages/view_bookings.dart';

void main() => runApp(MaterialApp(initialRoute: '/', routes: {
      '/': (context) => const VisitorHostel(),
      '/viewBooking': (context) => const ViewBookings(),
      '/cancelledBookings': (context) => const CancelledBookings(),
      '/activeBooking': (context) => const ActiveBookings(),
      '/completedBooking': (context) => const CompletedBookings()
    }));
