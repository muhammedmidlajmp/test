import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:thiran_technologies/view/widget/home_container.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenOne extends StatelessWidget {
  const HomeScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          appBar: AppBar(
            leading: const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search_outlined),
              ),
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Hello',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Alex Marconi',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: customContainer(
                        const Color.fromARGB(255, 255, 201, 119),
                        height: 15.h,
                        width: 45.w,
                        icon: const Icon(
                          Icons.history_toggle_off,
                          color: Colors.white,
                          size: 30,
                        ),
                        text: 'In Progress'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: customContainer(
                        const Color.fromARGB(255, 135, 121, 215),
                        height: 15.h,
                        width: 45.w,
                        icon: const Icon(Icons.repeat_outlined,
                            color: Colors.white, size: 30),
                        text: 'Ongoing'),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: customContainer(
                        const Color.fromARGB(255, 111, 255, 142),
                        height: 15.h,
                        width: 45.w,
                        icon: const Icon(Icons.domain_verification_outlined,
                            color: Colors.white, size: 30),
                        text: 'Completed'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: customContainer(
                        const Color.fromARGB(255, 255, 99, 55),
                        height: 15.h,
                        width: 45.w,
                        icon: const Icon(Icons.cancel_presentation_sharp,
                            color: Colors.white, size: 30),
                        text: 'Cancel'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Daily Task',
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'All Task ',
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                ],
              ),
              SizedBox(
                // Replace Expanded with Container
                height: 30.h, // Adjust the height as needed
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => ListTile(
                    leading: const Icon(
                      Icons.task_alt_outlined,
                      color: Colors.green,
                    ),
                    title: Text(
                      "App Animation",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, color: Colors.black87),
                    ),
                    subtitle: LinearProgressIndicator(
                      borderRadius: BorderRadius.circular(20),
                      value: 0.8,
                      minHeight: 8,
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(Colors.blue),
                    ),
                    trailing: const SizedBox(
                      width: 100.0, // Adjust the width as needed
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 20.0,
                            backgroundColor: Colors.grey,
                          ),
                          Positioned(
                            left: 15.0,
                            child: CircleAvatar(
                              radius: 20.0,
                              backgroundColor: Colors.black,
                            ),
                          ),
                          Positioned(
                            left: 30.0,
                            child: CircleAvatar(
                              radius: 20.0,
                              backgroundColor: Colors.red,
                            ),
                          ),
                          Positioned(
                            left: 80.0,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
