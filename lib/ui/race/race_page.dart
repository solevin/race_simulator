import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:race_simulator/ui/result/result_page.dart';
import 'package:provider/provider.dart';

class RacePage extends StatelessWidget {
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const RacePage(),
    );
  }

  const RacePage({Key? key}) : super(key: key);
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
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(1.r),
                        child: Container(
                          height: 25.h,
                          width: 25.h,
                          color: Colors.cyan,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.r),
                        child: Container(
                          height: 25.h,
                          width: 25.h,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.r),
                        child: Container(
                          height: 25.h,
                          width: 25.h,
                          color: Colors.amber,
                        ),
                      ),
                    ],
                  ),
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
                      Navigator.of(context).push<dynamic>(
                        ResultPage.route(),
                      );
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
