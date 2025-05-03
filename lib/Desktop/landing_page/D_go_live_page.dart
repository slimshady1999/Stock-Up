import 'package:flutter/material.dart';
import 'package:stockup/widgets/custom_colors.dart';

class DesktopGoLivePage extends StatelessWidget {
  const DesktopGoLivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //-- Content1
            Container(
              margin: const EdgeInsets.only(top: 40),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //-- Texts
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 6),
                            child: SizedBox(
                              width: 34,
                              child: Divider(
                                thickness: 1.7,
                                color: Color(purpleColor),
                              ),
                            ),
                          ),
                          Text(
                            "LIVE STREAMS & PODCASTS EVENTS",
                            style: Theme.of(context).textTheme.bodyLarge!
                                .copyWith(color: Color(black)),
                          ),
                        ],
                      ),
                      Text(
                        "A Live-Stream or Podcast\nfor Tutors & Entrepreneurs\non an educational level",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          "Host a podcast or go full on Live-Streaming share your\ninsights & knowledge that is accessable to everyone to help\nthem build a successful career",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),

                      //-- Button
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 42,
                              margin: const EdgeInsets.only(right: 8),
                              width: 143,
                              child: Material(
                                borderRadius: BorderRadius.circular(7),
                                color: Color(purpleColor),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(7),
                                  onTap: () {},
                                  child: Center(
                                    child: Text(
                                      'Start Streaming',
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodyMedium!.copyWith(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Icon(
                              Icons.multitrack_audio_sharp,
                              color: Color(white),
                              size: 39,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  //-- Image1
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2.1,
                    child: Image.asset("assets/images/live2.jpg"),
                  ),
                ],
              ),
            ),

            //-- content 2
            Container(
              height: MediaQuery.of(context).size.height / 3.1,
              width: double.infinity,
              margin: EdgeInsets.only(left: 30, right: 30, top: 45),
              decoration: BoxDecoration(
                color: Color(lightBlack),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //-- tip1
                  Container(
                    height: MediaQuery.of(context).size.height / 4.1,
                    width: MediaQuery.of(context).size.width / 4.4,
                    decoration: BoxDecoration(
                      color: Color(black),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //-- Text1
                          Text(
                            "Productivity Tips",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "Sharing tips and tricks for improving productivity",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20, top: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.multitrack_audio_sharp,
                                  size: 45,
                                  color: const Color.fromARGB(
                                    255,
                                    33,
                                    243,
                                    233,
                                  ),
                                ),
                                Icon(
                                  Icons.multitrack_audio_sharp,
                                  size: 45,
                                  color: const Color.fromARGB(
                                    255,
                                    33,
                                    243,
                                    233,
                                  ),
                                ),
                                Icon(
                                  Icons.multitrack_audio_sharp,
                                  size: 45,
                                  color: const Color.fromARGB(
                                    255,
                                    33,
                                    243,
                                    233,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //-- Tip2
                  Container(
                    height: MediaQuery.of(context).size.height / 4.1,
                    width: MediaQuery.of(context).size.width / 4.4,
                    decoration: BoxDecoration(
                      color: Color(black),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //-- Text1
                          Text(
                            "Sharing Logic Insights",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "Sharing tips and tricks for improving critical thinking",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20, top: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.multitrack_audio_sharp,
                                  size: 45,
                                  color: const Color.fromARGB(255, 243, 33, 68),
                                ),
                                Icon(
                                  Icons.multitrack_audio_sharp,
                                  size: 45,
                                  color: const Color.fromARGB(255, 243, 33, 68),
                                ),
                                Icon(
                                  Icons.multitrack_audio_sharp,
                                  size: 45,
                                  color: const Color.fromARGB(255, 243, 33, 68),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //-- Tip2
                  Container(
                    height: MediaQuery.of(context).size.height / 4.1,
                    width: MediaQuery.of(context).size.width / 4.4,
                    decoration: BoxDecoration(
                      color: Color(black),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //-- Text1
                          Text(
                            "Meetings & Meetups",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "Enage your audiences with interactive meetings virtually",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20, top: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.multitrack_audio_sharp,
                                  size: 45,
                                  color: const Color.fromARGB(
                                    255,
                                    104,
                                    235,
                                    108,
                                  ),
                                ),
                                Icon(
                                  Icons.multitrack_audio_sharp,
                                  size: 45,
                                  color: const Color.fromARGB(
                                    255,
                                    104,
                                    235,
                                    108,
                                  ),
                                ),
                                Icon(
                                  Icons.multitrack_audio_sharp,
                                  size: 45,
                                  color: const Color.fromARGB(
                                    255,
                                    104,
                                    235,
                                    108,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
