import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({super.key,required this.firstTab,required this.secondTab});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xFFF4F6FD),
      ),
      child: Row(
        children: [
          /*
                Airline Tickets
                 */
          Expanded(
            child: Container(
              //width: 220,
              padding: EdgeInsets.symmetric(vertical: 7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(
                    50,
                  ),
                ),
                color: Colors.white,
              ),
              child: Center(child: Text(firstTab)),//'Airline Tickets'
            ),
          ),
          /*
                 Hotels
                 */
          Expanded(
            child: Container(
              //width: 220,
              padding: EdgeInsets.symmetric(vertical: 7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(
                    50,
                  ),
                ),
                color: Colors.transparent,
              ),
              child: Center(child: Text(secondTab)),//'Hotels'
            ),
          ),
        ],
      ),
    );
  }
}
