import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoRegistar extends StatelessWidget {
  final String adres;

  final String cod;
  final String hour;

  const InfoRegistar({
    super.key,
    required this.adres,
    required this.cod,
    required this.hour,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
      width: 400.w,
      height: 78.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.r),
        color: Color(0xffD3DDF3),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 3,
            children: [
              Text(
                adres,
                style: TextStyle(
                  color: Color(0xff172441),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: [
                  Text(
                    cod,
                    style: TextStyle(
                      color: Color(0xff5C74AA),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    cod,
                    style: TextStyle(
                      color: Color(0xff5C74AA),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                ],
              ),
            ],
          ),
          IconButton(
            icon: Icon(Icons.more_vert,size: 25.sp,),
            onPressed: () async {
              final RenderBox button = context.findRenderObject() as RenderBox;
              final position = button.localToGlobal(Offset.zero);

              await showMenu(
                context: context,
                position: RelativeRect.fromLTRB(
                  position.dx+50,
                  position.dy + 60,
                  position.dx+20,
                  position.dy+10,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                items: [
                  PopupMenuItem(
                    value: "remove",
                    child: Text(
                      "Remove Course",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],),
    );
  }
}
