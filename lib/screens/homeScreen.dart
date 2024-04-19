import 'package:flutter/material.dart';
import 'package:quiz_app_ui/screens/quizScreen.dart';
import 'package:quiz_app_ui/utilities/color.dart';
import 'package:quiz_app_ui/widget/QuizList.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.primary,
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // app name
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'QUI',
                        style: TextStyle(
                          color: AppColor.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3,
                        ),
                      ),
                      Text(
                        'ZZ',
                        style: TextStyle(
                          color: AppColor.grey.withOpacity(0.6),
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3,
                        ),
                      ),
                    ],
                  ),
                ),

                // title and description
                const Padding(
                  padding: EdgeInsets.only(
                    top: 28,
                    left: 18,
                    right: 18,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Challenge your friends',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: AppColor.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          'Invite your friends to play quiz game',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            color: AppColor.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // start button
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 20,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuizList(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 8,
                        ),
                        child: Text(
                          "Start Now",
                          style: TextStyle(
                            color: AppColor.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: width * 0.05,
                ),

                // quiz list
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: AppColor.grey,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            60,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 40,
                                bottom: 16,
                                left: 10,
                                right: 10,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Explore Quizzes",
                                    style: TextStyle(
                                      color: AppColor.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                                  ),
                                  Text(
                                    "VIEW ALL",
                                    style: TextStyle(
                                      color: AppColor.black.withOpacity(0.8),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GridView.count(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              crossAxisCount: 2,
                              children: const [
                                QuizListCard(
                                  title: "Sports",
                                  icon: Icons.sports_football,
                                ),
                                QuizListCard(
                                  title: "Chemistry",
                                  icon: Icons.biotech,
                                ),
                                QuizListCard(
                                  title: "Economics",
                                  icon: Icons.attach_money_sharp,
                                ),
                                QuizListCard(
                                  title: "Astronomy",
                                  icon: Icons.compass_calibration,
                                ),
                                QuizListCard(
                                  title: "Math",
                                  icon: Icons.square_foot,
                                ),
                                QuizListCard(
                                  title: "Architecture",
                                  icon: Icons.architecture,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              top: 90,
              right: 10,
              child: Image.asset(
                'assets/img/man.png',
                height: height * 0.2,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
