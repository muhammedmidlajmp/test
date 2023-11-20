import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

Widget customContainer(Color bckColor,
    {required double height,
    required double width,
    required Icon icon,
    required text}) {
  return Sizer(
    builder: (context, orientation, deviceType) => Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: bckColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              text,
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    ),
  );
}
