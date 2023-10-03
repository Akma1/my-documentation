import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import '../controllers/calendar_controller.dart';

class CalendarView extends GetView<CalendarController> {
  const CalendarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CalendarView'),
        centerTitle: true,
      ),
      body: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

final testArray = [for (var i = 0; i < 100; i++) 'item$i'];

final itemScrollController = ScrollController();

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'title',
        home: Scaffold(
            body: ListView.separated(
          controller: itemScrollController,
          itemCount: testArray.length,
          scrollDirection: Axis.horizontal,
          physics: const ClampingScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, i) => const Text(''),
          // IteSm(
          //   testArray[i],
          //   testArray[i] == 'item5' ? true : false,
          //   () => {
          //     // testing code for the scroll functionality
          //     itemScrollController.scrollTo(
          //         index: (i + 5) % testArray.length,
          //         duration: Duration(seconds: 1),
          //         curve: Curves.easeIn,
          //         alignment: 0.5),
          //     /// Needed to center the item when scrolling
          //   },
          // ),
          // itemScrollController: itemScrollController,
          separatorBuilder: (ctx, i) => Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
        )));
  }
}

class MyCalendar extends StatefulWidget {
  @override
  _MyCalendarState createState() => _MyCalendarState();
}

class _MyCalendarState extends State<MyCalendar> {
  CalendarController? calendarController;

  @override
  void initState() {
    super.initState();
    calendarController = CalendarController();
  }

  @override
  void dispose() {
    calendarController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Calendar'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          TableCalendar(
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: DateTime.now(),
            // calendarController: calendarController,
            availableCalendarFormats: const {
              CalendarFormat.month: 'Month',
              CalendarFormat.week: 'Week',
            },
            calendarStyle: CalendarStyle(
                // todayColor: Colors.blue,
                // selectedColor: Colors.deepOrange,
                // weekendStyle: TextStyle(color: Colors.red),
                // outsideWeekendStyle: TextStyle(color: Colors.grey),
                ),
            headerStyle: HeaderStyle(
              formatButtonTextStyle: TextStyle().copyWith(color: Colors.white, fontSize: 15.0),
              formatButtonDecoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
          ),
          SizedBox(height: 20),
          // Add your additional widgets here
        ],
      ),
    );
  }
}
