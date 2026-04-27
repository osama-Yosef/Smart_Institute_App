import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Password extends StatefulWidget {
  const Password({
    super.key,
    this.controller,
  });

  final TextEditingController? controller;

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {

  bool isHidden = true;

  OutlineInputBorder border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.r),
      borderSide: BorderSide(
        color: Colors.grey.shade300,
        width: 1.2,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,

      obscureText: isHidden,

      onTapOutside: (_) {
        FocusScope.of(context).unfocus();
      },

      style: TextStyle(
        fontSize: 15.sp,
        color: Colors.black,
      ),

      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",

        labelStyle: TextStyle(
          fontSize: 16.sp,
          color: Colors.black,
        ),

        hintStyle: TextStyle(
          fontSize: 14.sp,
          color: Colors.grey,
        ),

        filled: true,
        fillColor: const Color(0xffF5F5F5),

        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 14.h,
        ),

        suffixIcon: IconButton(
          icon: Icon(
            isHidden
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
          ),
          onPressed: () {
            setState(() {
              isHidden = !isHidden;
            });
          },
        ),

        border: border(),
        enabledBorder: border(),
        focusedBorder: border(),
      ),
    );
  }
}