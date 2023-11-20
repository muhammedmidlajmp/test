import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:thiran_technologies/view/project_screen/options_view.dart';

class ProjectScreen extends StatelessWidget {
  ProjectScreen({super.key, Key? ke});
  final List<String> options = ['All', 'Ongoing', 'Completed'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  const CircleAvatar(
          backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx9tjaExsY-srL4VsHNE_OKGVCJ-eIFNBktw&usqp=CAU'),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_sharp,
                size: 30,
              ))
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Project',
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                )),
            const OptionsView(opetions: ['All', 'Ongoing', 'Competed']),
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Set the item count to 10
                itemBuilder: (context, index) {
                  // You can customize each item in the list here
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 230,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade600,
                                offset: const Offset(2, 2),
                                blurRadius: 2,
                                spreadRadius: 0),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'App Animation',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              'Today, Shared-Unbox Digital',
                              style: GoogleFonts.poppins(),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Team',
                                    style: GoogleFonts.poppins(),
                                  ),
                                  CircularPercentIndicator(
                                    radius: 40.0,
                                    lineWidth: 8.0,
                                    percent: 0.8,
                                    center: const Text("85%"),
                                    progressColor: Colors.green,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              child: Stack(
                                children: [
                                  for (var i = 0; i < [1, 2, 3, 4].length; i++)
                                    Positioned(
                                      left: (i * (1 - 0.4) * 40).toDouble(),
                                      top: 0,
                                      child: const CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx9tjaExsY-srL4VsHNE_OKGVCJ-eIFNBktw&usqp=CAU'),
                                        radius: 18,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Row(
                                children: [
                                  const Icon(CupertinoIcons.calendar),
                                  Text(' June 15, 2021 - June 22, 2021',
                                      style: GoogleFonts.poppins()),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
