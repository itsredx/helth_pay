import 'package:flutter/material.dart';

import '../Components/bottom_button.dart';


class BottomSheetContainer extends StatefulWidget {
  const BottomSheetContainer({Key? key}) : super(key: key);

  @override
  State<BottomSheetContainer> createState() => _BottomSheetContainerState();
}

class _BottomSheetContainerState extends State<BottomSheetContainer> {

  late int selectedColor = 0xFF016BFB;
  late int notSelectedColor = 0xFFEBEFF3;

  int currentSelectionByPayment = 0;
  int currentSelectionByDate = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      color: const Color.fromRGBO(108, 110, 111, 1),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 15.0),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(25)),
          ),
          child: Column(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment:
                MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: const [
                        Text(
                          'close',
                          style: TextStyle(
                              color: Colors.grey),
                        ),
                        Icon(
                          Icons.close_rounded,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Text('Filter by Payment'),
              Flexible(
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 4.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            currentSelectionByPayment = 0;
                          });
                        },
                        child: Container(
                          height: 30,
                          width: 100,
                          padding: const EdgeInsets
                              .symmetric(
                              horizontal: 11,
                              vertical: 6),
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(
                                6),
                            color: currentSelectionByPayment == 0 ? Color(selectedColor) : Color(notSelectedColor),
                          ),
                          child:  Center(
                            child: Flexible(
                              child: Text(
                                'All Transactions',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: currentSelectionByPayment == 0 ? Colors.white : Colors.black45,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // const SizedBox(width: 10,),
                    Flexible(
                      child: Padding(
                        padding:
                        const EdgeInsets.symmetric(
                            horizontal: 4.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              currentSelectionByPayment = 1;
                            });
                          },
                          child: Container(
                            height: 30,
                            padding: const EdgeInsets
                                .symmetric(
                                horizontal: 11,
                                vertical: 6),
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(
                                  6),
                              color: currentSelectionByPayment == 1 ? Color(selectedColor) : Color(notSelectedColor),
                            ),
                            child:  Center(
                                child: Text(
                                  'Credit',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: currentSelectionByPayment == 1 ? Colors.white : Colors.black45,
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 4.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              currentSelectionByPayment = 3;
                            });
                          },
                          child: Container(
                            height: 30,
                            padding: const EdgeInsets
                                .symmetric(
                                horizontal: 11,
                                vertical: 6),
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(
                                  6),
                              color: currentSelectionByPayment == 3 ? Color(selectedColor) : Color(notSelectedColor),
                            ),
                            child: Center(
                                child: Text(
                                  'Debit',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: currentSelectionByPayment == 3 ? Colors.white : Colors.black45,
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Text('Filter by Date'),
              Flexible(
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 4.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              currentSelectionByDate = 0;
                            });
                          },
                          child: Container(
                            height: 30,
                            padding: const EdgeInsets
                                .symmetric(
                                horizontal: 11,
                                vertical: 6),
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(
                                  6),
                              color: currentSelectionByDate == 0 ? Color(selectedColor) : Color(notSelectedColor),
                            ),
                            child: Center(
                                child: Text(
                                  'This week',
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w500,
                                    color: currentSelectionByDate == 0 ? Colors.white : Colors.black45,
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding:
                        const EdgeInsets.symmetric(
                            horizontal: 4.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              currentSelectionByDate = 1;
                            });
                          },
                          child: Container(
                            height: 30,
                            padding: const EdgeInsets
                                .symmetric(
                                horizontal: 11,
                                vertical: 6),
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(
                                  6),
                              color: currentSelectionByDate == 1 ? Color(selectedColor) : Color(notSelectedColor),
                            ),
                            child: Center(
                                child: Text(
                                  'This month',
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w500,
                                    color: currentSelectionByDate == 1 ? Colors.white : Colors.black45,
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 4),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              currentSelectionByDate = 3;
                            });
                          },
                          child: Container(
                            height: 30,
                            padding: const EdgeInsets
                                .symmetric(
                                horizontal: 11,
                                vertical: 6),
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(
                                  6),
                              color: currentSelectionByDate == 3 ? Color(selectedColor) : Color(notSelectedColor),
                            ),
                            child: Center(
                                child: Text(
                                  'Last 90 days',
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w500,
                                    color: currentSelectionByDate == 3 ? Colors.white : Colors.black45,
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Text('Choose date range'),
              Flexible(
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 4.0),
                        child: Container(
                          height: 30,
                          padding: const EdgeInsets
                              .symmetric(
                              horizontal: 8,
                              vertical: 8),
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(
                                6),
                            color:
                            const Color(0xFFEBEFF3),
                          ),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment
                                .spaceBetween,
                            children: const [
                              Text(
                                'From',
                                style: TextStyle(
                                    fontSize: 10),
                              ),
                              Icon(
                                Icons
                                    .calendar_month_outlined,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 4.0),
                        child: Container(
                          height: 30,
                          padding: const EdgeInsets
                              .symmetric(
                              horizontal: 8,
                              vertical: 8),
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(
                                6),
                            color:
                            const Color(0xFFEBEFF3),
                          ),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment
                                .spaceBetween,
                            children: const [
                              Text(
                                'To',
                                style: TextStyle(
                                    fontSize: 10),
                              ),
                              Icon(
                                Icons
                                    .calendar_month_outlined,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const BottomButton(
                  buttonTitle: 'Apply filters'),
            ],
          ),
        ),
      ),
    );
  }
}
