import 'package:booktickets/widget/icon_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:gap/gap.dart';
import '../widget/double_text_widget.dart';
import 'package:booktickets/widget/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Gap(40),
          Text(
            'What are\nyou Looking for?',
            style: Styles.headingLineStyle1.copyWith(fontSize: 35),
          ),
          Gap(20),
          AppTicketTabs(firstTab: 'Airline Tickets',secondTab: 'Hotels',),
          Gap(25),
          AppIconText(icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(20),
          AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(25),
          Container(
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
            decoration: BoxDecoration(
              color: Color(0xD91130CE),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
                child: Text(
              'Find Tickets',
              style: Styles.textStyle.copyWith(color: Colors.white),
            )),
          ),
          Gap(40),
          AppDoubleTextWidget(
              bigText: 'Upcoming Flights', smallText: 'View all'),
          Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 450,
                width: 200,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1,
                      ),
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage('assets/images/plane_sit.jpg'))),
                    ),
                    Gap(12),
                    Text(
                      "20% discount on the early booking of flight. Don't miss.",
                      style: Styles.headingLineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 220,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Color(0xFF3ABBBB),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount\nfor survey',
                              style: Styles.headingLineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Gap(10),
                            Text(
                              'Take the survey about our services and get discount.',
                              style: Styles.headingLineStyle2.copyWith(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 18,
                              color: Color(0xFF189999),
                            ),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(10),
                  Container(
                    height: 220,
                    width: 180,
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Take Love',
                          style: Styles.headingLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(5),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "💖", // Small heart
                                style: TextStyle(fontSize: 30, color: Colors.pink),
                              ),
                              TextSpan(
                                text: "💞", // Medium heart
                                style: TextStyle(fontSize: 50, color: Colors.red),
                              ),
                              TextSpan(
                                text: "💘", // Big heart with arrow
                                style: TextStyle(fontSize: 60, color: Colors.deepPurple),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
