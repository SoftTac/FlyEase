import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widget/column_layout.dart';
import 'package:booktickets/widget/layout_builder_widget.dart';
import 'package:flutter/material.dart';
import 'package:booktickets/widget/thick_container.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, required this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: GetPlatform.isAndroid == true ? 183 : 169,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /* Showing the blue part of the card/ticket */
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Color(0xFF526799) : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: isColor == null
                            ? Styles.headingLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headingLineStyle3,
                      ),
                      Expanded(child: Container()),
                      ThickContainer(
                        isColor: true,
                      ),
                      Expanded(
                        child: Stack(
                          alignment:
                              Alignment.center, // Ensures proper overlapping
                          children: [
                            SizedBox(
                              child:AppLayoutBuilderWidget(sections: 6,)
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : Color(0xFF8ACCA7),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ThickContainer(
                        isColor: true,
                      ),
                      Expanded(child: Container()),
                      Text(
                        ticket['to']['code'],
                        style: isColor == null
                            ? Styles.headingLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headingLineStyle3,
                      ),
                    ],
                  ),
                  Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket['from']['name'],
                          style: isColor == null
                              ? Styles.headingLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headingLineStyle4,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: isColor == null
                            ? Styles.headingLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headingLineStyle3,
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? Styles.headingLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headingLineStyle4,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /* Showing the orange part of the card/ticket */
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                      color:
                          isColor == null ? Colors.grey.shade200 : Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    )),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                width: 5,
                                height: 1,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: isColor == null
                                          ? Colors.white
                                          : Colors.grey.shade300),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                      color:
                          isColor == null ? Colors.grey.shade300 : Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    )),
                  ),
                ],
              ),
            ),
            /* Showing the bottom-orange part of the card/ticket */
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                  bottomRight: Radius.circular(isColor == null ? 21 : 0),
                ),
              ),
              padding:
                  EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: ticket['date'],
                        secondText: 'Date',
                        alignment: CrossAxisAlignment.start,
                        isColor: isColor,
                      ),
                      /*Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['date'],
                            style:isColor==null? styles.headingLineStyle3
                                .copyWith(color: Colors.white):styles.headingLineStyle3,
                          ),
                          Gap(5),
                          Text(
                            'Date',
                            style:isColor==null? styles.headingLineStyle4
                                .copyWith(color: Colors.white):styles.headingLineStyle4,
                          ),
                        ],
                      ),*/
                      AppColumnLayout(
                        firstText: ticket['departure_time'],
                        secondText: 'Departure time',
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),
                      /*Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['departure_time'],
                            style: isColor == null
                                ? styles.headingLineStyle3
                                    .copyWith(color: Colors.white)
                                : styles.headingLineStyle3,
                          ),
                          Gap(5),
                          Text(
                            'Departure time',
                            style: isColor == null
                                ? styles.headingLineStyle4
                                    .copyWith(color: Colors.white)
                                : styles.headingLineStyle4,
                          ),
                        ],
                      ),*/
                      AppColumnLayout(
                        firstText: ticket['number'].toString(),
                        secondText: 'Number',
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor,
                      ),
                      /*Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket['number'].toString(),
                            style: isColor == null
                                ? styles.headingLineStyle3
                                    .copyWith(color: Colors.white)
                                : styles.headingLineStyle3,
                          ),
                          Gap(5),
                          Text(
                            'Number',
                            style: isColor == null
                                ? styles.headingLineStyle4
                                    .copyWith(color: Colors.white)
                                : styles.headingLineStyle4,
                          ),
                        ],
                      ),*/
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
