import 'package:flutter/material.dart';
import 'package:qrcode_app/toggle_widget.dart';
import 'app_bar.dart';
import 'model/ticket.dart';

class PlaneTicketListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Ticket ticket = (Ticket()
    ..id = "1"
    ..sourceStation = "LHR"
    ..destinationStation = "SXF"
    ..sourceCity = "London"
    ..destinationCity = "New York"
    ..departureTime = "15:00"
    ..arrivalTime = "07:00"
    ..terminal = "12"
    ..game = "F62"
    ..boardingTime = "14:30");

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: "Plane ticket"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            ToggleWidget(firstOption: "not used", secondOption: "Already used"),
            SizedBox(height: 20.0),
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: <Widget>[
                TicketCardWidget(ticket: ticket),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
