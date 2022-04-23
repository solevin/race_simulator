import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:race_simulator/ui/race/race_page.dart';
import 'package:provider/provider.dart';

class ResultPage extends StatelessWidget {
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const ResultPage(),
    );
  }

  const ResultPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '1st : ',
                style: TextStyle(fontSize: 30.sp, color: Colors.black),
              ),
              Text(
                '2nd : ',
                style: TextStyle(fontSize: 30.sp, color: Colors.black),
              ),
              Text(
                '3rd : ',
                style: TextStyle(fontSize: 30.sp, color: Colors.black),
              ),
              Padding(
                padding: EdgeInsets.all(10.r),
                child: Container(
                  height: 40.h,
                  width: 70.w,
                  color: Colors.deepOrange,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push<dynamic>(
                        RacePage.route(),
                      );
                    },
                    child: Center(
                      child: Text(
                        'Retry',
                        style: TextStyle(fontSize: 20.sp, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
