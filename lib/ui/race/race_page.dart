import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:race_simulator/ui/result/result_page.dart';
import 'package:ezanimation/ezanimation.dart';
import 'package:provider/provider.dart';

class RacePage extends StatefulWidget {
  @override
  _RacePageState createState() => _RacePageState();
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => RacePage(),
    );
  }
}

class _RacePageState extends State<RacePage> {
  var animation = EzAnimation.sequence([
    SequenceItem(0.0, 330.w),
    SequenceItem(330.w, 330.w, weight: 3.0),
  ], Duration(seconds: 4));
  var animation1 = EzAnimation.sequence([
    SequenceItem(0.0, 330.w),
    SequenceItem(330.w, 330.w),
  ], Duration(seconds: 4));
  var animation2 = EzAnimation.sequence([
    SequenceItem(0.0, 330.w, weight: 3.0),
    SequenceItem(330.w, 330.w),
  ], Duration(seconds: 4));

  @override
  void initState() {
    super.initState();
    animation.start();
    animation1.start();
    animation2.start();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 540.h,
                width: 360.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedBuilder(
                      animation: animation,
                      builder: (context, snapshot) {
                        return Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(
                                animation.value, 1.h, 0, 1.h),
                            child: Container(
                              height: 25.h,
                              width: 25.h,
                              color: Colors.cyan,
                            ),
                          ),
                        );
                      },
                    ),
                    AnimatedBuilder(
                      animation: animation,
                      builder: (context, snapshot) {
                        return Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(
                                animation1.value, 1.h, 0, 1.h),
                            child: Container(
                              height: 25.h,
                              width: 25.h,
                              color: Colors.black,
                            ),
                          ),
                        );
                      },
                    ),
                    AnimatedBuilder(
                      animation: animation,
                      builder: (context, snapshot) {
                        return Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(
                                animation2.value, 1.h, 0, 1.h),
                            child: Container(
                              height: 25.h,
                              width: 25.h,
                              color: Colors.amber,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.r),
                child: Container(
                  height: 40.h,
                  width: 70.w,
                  color: Colors.deepOrange,
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.of(context).push<dynamic>(
                      //   ResultPage.route(),
                      // );
                      setState(() {
                        animation.reset();
                        animation.start();
                        animation1.reset();
                        animation1.start();
                        animation2.reset();
                        animation2.start();
                      });
                    },
                    child: Center(
                      child: Text(
                        'Result',
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
