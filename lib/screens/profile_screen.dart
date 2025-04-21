import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        children: [
          const Gap(40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.headingLineStyle1,
                  ),
                  Gap(5),
                  Text(
                    'New-York',
                    style: Styles.headingLineStyle4,
                  ),
                  Gap(8),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 3,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xFFFEF4F3),
                    ),
                    child: Text(
                      'Premium Member',
                      style: Styles.headingLineStyle4.copyWith(
                        color: Styles.primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                padding: EdgeInsets.all(12),
                child: Icon(
                  Icons.edit_outlined,
                  color: Styles.primaryColor,
                  size: 20,
                ),
              ),
            ],
          ),
          Gap(8),
          Divider(color: Colors.grey.shade300),
          Gap(8),

          // Reward Card
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Styles.primaryColor,
            ),
            child: Stack(
              children: [
                Positioned(
                  right: -50,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 18,
                        color: const Color(0xFF264CD2).withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius:25,
                        child: Icon(
                          Icons.lightbulb_outline_rounded,
                          color: Styles.primaryColor,
                          size: 30,
                        ),
                      ),
                      Gap(15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'You\'ve got a new award',
                            style: Styles.headingLineStyle2.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'You have 150 flights this year',
                            style: Styles.headingLineStyle2.copyWith(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Gap(25),
          Text('Accumulated Miles', style: Styles.headingLineStyle2),
          Gap(20),

          // Miles Card
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 2,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  '192,802',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w600,
                    color: Styles.textColor,
                  ),
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Miles accrued', style: Styles.headingLineStyle4),
                    Text('23 May 2023', style: Styles.headingLineStyle4),
                  ],
                ),
                Gap(20),
                Divider(color: Colors.grey.shade300),
                Gap(20),

                // Miles Breakdown
                _buildMileItem('23,042', 'Airline CO'),
                Gap(20),
                _buildMileItem('24', 'McDonald\'s'),
                Gap(20),
                _buildMileItem('52,340', 'Exuma'),
                Gap(20),
              ],
            ),
          ),

          Gap(25),
          Center(
            child: Text(
              'How to get more miles',
              style: Styles.textStyle.copyWith(
                color: Styles.primaryColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMileItem(String miles, String source) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(miles, style: Styles.headingLineStyle3),
            Text('Miles', style: Styles.headingLineStyle4),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(source, style: Styles.headingLineStyle3),
            Text('Received from', style: Styles.headingLineStyle4),
          ],
        ),
      ],
    );
  }
}