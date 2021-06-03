import 'package:flutter/material.dart';

import 'app_bar.dart';

class PlaneTicketListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                Hero(tag: ticket.id, child: TicketCardWidget(ticket: ticket)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}