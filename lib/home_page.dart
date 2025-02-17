import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Row(
                 children: [
                   const CircleAvatar(
                     radius: 25,
                     backgroundImage: AssetImage('assets/andrea-avatar.png'),
                   ),
                   const SizedBox(width: 15),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Row(
                         children: [
                           const Text(
                             'Andrea Bizzotto',
                             style: TextStyle(
                               fontSize: 17,
                               fontWeight: FontWeight.bold,
                               color: Colors.black,
                             ),
                           ),
                           const SizedBox(width: 5),
                           SvgPicture.asset(
                             'assets/icon_heart_blue.svg',
                             width: 20,
                             height: 20,
                             fit: BoxFit.cover,
                           ),
                         ],
                       ),
                       const Row(
                         children: [
                           Text('@biz84'),
                           SizedBox(width: 12),
                           Text(
                             'Follow',
                             style: TextStyle(
                               fontSize: 17,
                               fontWeight: FontWeight.bold,
                               color: Colors.blueAccent,
                             ),
                           ),
                         ],
                       ),
                     ],
                   ),
                 ],
               ),
                SvgPicture.asset(
                  'assets/icon_x.svg',
                  width: 25,
                  height: 25,
                ),


              ],
            ),

            // Scrollable content
            Expanded(
              child: ListView(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 18.0),
                    child: Text(
                      "Did you Know?",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 18.0),
                    child: Text(
                      '''When you call `MediaQuery.of(context)` inside a build method, the widget will rebuild when *any* of the MediaQuery properties change.''',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Colors.black,
                        ),
                        children: [
                          const TextSpan(
                            text: "But there's a better way that lets you depend only on the properties you care about ",
                          ),
                          const TextSpan(
                            text: "(and minimize unnecessary rebuilds). ",
                          ),
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: SvgPicture.asset(
                              'assets/hand.svg',
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Image Banner
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: const Image(
                      image: AssetImage("assets/media-query-banner.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),

                  // Time & Info Row
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            Text("3.21 PM"),
                            SizedBox(width: 5),
                            Text("Jun 20, 2023")
                          ],
                        ),
                        SvgPicture.asset(
                          'assets/icon_info.svg',
                          width: 20,
                          height: 20,
                        ),
                      ],
                    ),
                  ),

                  // Divider
                  const Divider(color: Colors.black12),

                  // Icons & Actions
                  Row(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icon_heart_red.svg',
                            width: 20,
                            height: 20,
                            color: Colors.red,
                          ),
                          const SizedBox(width: 15),
                          const Text(
                            "1K",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icon_comment.svg',
                            width: 20,
                            height: 20,
                            color: Colors.lightBlue,
                          ),
                          const SizedBox(width: 15),
                          const Text(
                            "Reply",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icon_link.svg',
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(width: 15),
                          const Text(
                            "Copy link",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // Read Replies Button
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: GestureDetector(
                      onTap: () {
                        print("Read 12 replies clicked!");
                      },
                      child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "Read 12 replies",
                          style: TextStyle(fontSize: 14, color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20), // Extra spacing at the bottom
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
