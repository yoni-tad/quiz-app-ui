import 'package:flutter/material.dart';
import 'package:quiz_app_ui/screens/resultScreen.dart';
import 'package:quiz_app_ui/utilities/color.dart';
import 'package:quiz_app_ui/widget/ChooseList.dart';

class QuizList extends StatefulWidget {
  const QuizList({super.key});

  @override
  State<QuizList> createState() => _QuizListState();
}

class _QuizListState extends State<QuizList> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.grey,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 20,
          ),
          child: Column(
            children: [
              // match players
              Container(
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/img/01.png',
                            height: height * 0.05,
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          const Text(
                            'James',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColor.black,
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 26,
                        ),
                        child: Text(
                          "VS",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/img/02.png',
                            height: height * 0.05,
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          const Text(
                            'Joe',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColor.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: height * 0.06,
              ),

              // question number and time
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Question 1 of 7",
                    style: TextStyle(
                        color: AppColor.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        letterSpacing: 1.5),
                  ),
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: AppColor.black,
                            width: 1.8,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Container(
                            color: AppColor.grey,
                            width: width * 0.12,
                            height: width * 0.12,
                          ),
                        ),
                      ),
                      const Positioned.fill(
                        child: Center(
                          child: Text(
                            '12',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColor.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // question
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "What is the largest city by population in the world?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColor.black,
                    fontSize: 30,
                  ),
                ),
              ),

              SizedBox(
                height: height * 0.02,
              ),

              // choose
              const Column(
                children: [
                  ChooseList(
                    isAnswer: false,
                    text: "San Fransisco",
                  ),
                  ChooseList(
                    isAnswer: true,
                    text: "Tokyo",
                  ),
                  ChooseList(
                    isAnswer: false,
                    text: "Berlin",
                  ),
                  ChooseList(
                    isAnswer: false,
                    text: "Lisbon",
                  ),
                ],
              ),

              // next btn
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ResultScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: width,
                    decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 14,
                      ),
                      child: Text(
                        "Next",
                        style: TextStyle(
                            color: AppColor.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
