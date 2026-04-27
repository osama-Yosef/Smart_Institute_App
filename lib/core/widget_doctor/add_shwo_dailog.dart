import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Course {
  final String title;
  final String code;
  bool selected;
  final bool disabled;

  Course({
    required this.title,
    required this.code,
    this.selected = false,
    this.disabled = false,
  });
}

void showCoursesSheet(BuildContext context) {
  List<Course> courses = [
    Course(title: "Discrete Mathematics", code: "BS 102", selected: true),
    Course(title: "Probability and Statistics", code: "BS 103"),
    Course(title: "Probability and Statistics", code: "BS 103"),
    Course(title: "Intro to Software Engineering", code: "CS 104", disabled: true),
    Course(title: "Intro to Software Engineering", code: "CS 104", disabled: true),
  ];

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (_) {
      return StatefulBuilder(
        builder: (context, setState) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.75,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
            ),
            child: Column(
              children: [
                const SizedBox(height: 10),

                // Handle
                Container(
                  width: 40.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                const SizedBox(height: 16),

                // List
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: courses.length,
                    itemBuilder: (context, index) {
                      final course = courses[index];

                      return GestureDetector(
                        onTap: course.disabled
                            ? null
                            : () {
                          setState(() {
                            course.selected = !course.selected;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: course.disabled
                                ? Colors.grey[300]
                                : Colors.white,
                            border: Border.all(
                              color: course.selected
                                  ? Colors.blue
                                  : Colors.grey.shade300,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      course.title,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: course.disabled
                                            ? Colors.grey
                                            : Colors.black,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      "${course.code} • 3 Credit Hours",
                                      style: TextStyle(
                                        color: course.disabled
                                            ? Colors.grey
                                            : Colors.grey[600],
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // Checkbox
                              if (!course.disabled)
                                Checkbox(
                                  value: course.selected,
                                  onChanged: (val) {
                                    setState(() {
                                      course.selected = val!;
                                    });
                                  },
                                ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                ],
            ),
          );
        },
      );
    },
  );
}