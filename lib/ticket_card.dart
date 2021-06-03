import 'package:flutter/material.dart';
import 'package:qrcode_app/theme.dart';

class TicketCardWidget extends StatelessWidget {
  final Ticket ticket;

  TicketCardWidget({required this.ticket});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.0,
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Material(
        color: primaryColor,
        elevation: 8.0,
        borderRadius: BorderRadius.all(Radius.circular(9.0)),
        child: InkWell(
            onTap: () {

            }
            child: Container(
        margin: const EdgeInsets.all(16.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      LocationWidget(
                        stationName: ticket.sourceStation,
                        cityName: ticket.sourceCity,
                        time: ticket.depqrtureTime,
                      ),
                      Spacer(),
                      Icon(
                        Icons.flight_takeoff,
                        color: Colors.white,
                      ),
                      Spacer(),
                      LocationWidget(
                        stationName: ticket.sourceStation,
                        cityName: ticket.sourceCity,
                        time: ticket.depqrtureTime,
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Container(
                    height: 0.5,
                    color: Colors.white,
                  ),
                  SizedBox(height: 16.0),
                  AirportDetailWidget(
                    terminal: ticket.terminal,
                    boarding: ticket.boarding,
                    game: ticket.game,
                  ),
                ],
              ),
            ),
            SizedBox(width: 10.0),
            Hero(
              tag: "qrcode${ticket.id}",
              child: Image.asset(
                "images/qrcode.png",
                width: 80.0,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    ),),
    );
    ),)
    )
    )
    }
}