import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:ui' as ui;

import 'package:portofolio/constant/color.dart';
import 'package:portofolio/constant/dataDummy.dart';
import 'package:portofolio/model/project.dart';
import 'package:portofolio/model/skill.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 300),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //
            Padding(
              padding: const EdgeInsets.only(right: 100, top: 100, bottom: 65),
              child: Text(
                "Hi Im Hawari, a special human with some ability to love learning and working on teamwork. ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 56,
                  foreground: Paint()
                    ..shader = ui.Gradient.linear(
                      const Offset(40, 100),
                      const Offset(50, 40),
                      <Color>[
                        const Color.fromRGBO(59, 246, 134, 1),
                        const Color.fromRGBO(76, 169, 255, 1),
                      ],
                    ),
                ),
              ),
            ),

            // biography
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const CircleAvatar(
                    radius: 75,
                    backgroundImage: NetworkImage(
                      "https://lh3.googleusercontent.com/a/ACg8ocJ3956RsUgBpXjGQJ2vj0T7KfFBadH6Pf3G5oENYK2yilY=s288-c-no",
                    ),
                  ),

                  //
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 36),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Biography",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: ColorsApp.textColor,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          //
                          Text.rich(
                            TextSpan(
                                text:
                                    "Getting Buff +1 for learning, Buff +2 for documentation and more buff on managing team. Exicited on",
                                children: [
                                  TextSpan(
                                    text: " Flutter",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(76, 169, 255, 1),
                                    ),
                                  ),
                                  TextSpan(text: ","),
                                  TextSpan(
                                    text: " UI/UX Design",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(59, 246, 134, 1),
                                    ),
                                  ),
                                  TextSpan(text: ","),
                                  TextSpan(text: " and"),
                                  TextSpan(
                                    text: " Laravel",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  TextSpan(text: "."),
                                ]),
                            style: TextStyle(
                              fontSize: 18,
                              color: ColorsApp.textColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  // Lets Connect
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Lets Connect",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: ColorsApp.textColor,
                        ),
                      ),
                      const SizedBox(height: 20),

                      // icon
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              launchUrlString(
                                  "https://www.youtube.com/@hhawari3053");
                            },
                            icon: const Icon(
                              FontAwesomeIcons.youtube,
                              color: ColorsApp.textColor,
                              size: 32,
                            ),
                          ),
                          const SizedBox(width: 20),
                          IconButton(
                            onPressed: () {
                              launchUrlString(
                                  "https://id.linkedin.com/in/ciptaraka-nurhisam-hawari-4059b2282?trk=people-guest_people_search-card");
                            },
                            icon: const Icon(
                              FontAwesomeIcons.linkedin,
                              color: ColorsApp.textColor,
                              size: 32,
                            ),
                          ),
                          const SizedBox(width: 20),
                          IconButton(
                            onPressed: () {
                              launchUrlString("https://github.com/Hawarikun");
                            },
                            icon: const Icon(
                              FontAwesomeIcons.github,
                              color: ColorsApp.textColor,
                              size: 32,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),

            // What I Do
            const SizedBox(height: 80),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 36),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "What I do",
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: ColorsApp.textColor),
                        ),
                        SizedBox(height: 20),
                        Text.rich(
                          TextSpan(
                            text: "Build and maintain ",
                            children: [
                              TextSpan(
                                text: "websites",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange,
                                ),
                              ),
                              TextSpan(text: ", "),
                              TextSpan(
                                text: "mobile dev",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(76, 169, 255, 1),
                                ),
                              ),
                              TextSpan(text: ", "),
                              TextSpan(text: "and "),
                              TextSpan(
                                text: "frontend dev",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(59, 246, 134, 1),
                                ),
                              ),
                              TextSpan(
                                  text:
                                      ". My motto is Beauty and function in equal measure as priority.")
                            ],
                          ),
                          style: TextStyle(
                            fontSize: 16,
                            color: ColorsApp.textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),

                //
                SizedBox(
                  height: 270,
                  width: 600,
                  child: ScrollConfiguration(
                    behavior: MyCustomScrollBehavior(),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: controller,
                      shrinkWrap: true,
                      itemCount: dummySkill.length,
                      itemBuilder: (context, index) {
                        Skill skill = dummySkill[index];

                        return Container(
                          height: 270,
                          margin: const EdgeInsets.only(right: 30),
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              //
                              Padding(
                                padding: const EdgeInsets.only(top: 36),
                                child: Container(
                                  height: 175,
                                  width: 262,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 18),
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(50, 52, 67, 1),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Column(
                                    //
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        skill.title,
                                        maxLines: 1,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: ColorsApp.textColor,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      const SizedBox(height: 15),
                                      Text(
                                        skill.description,
                                        textAlign: TextAlign.center,
                                        maxLines: 3,
                                        style: const TextStyle(
                                          // letterSpacing: 2
                                          overflow: TextOverflow.ellipsis,
                                          fontSize: 14,
                                          color: Color.fromRGBO(
                                              239, 237, 232, 0.65),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              //
                              Container(
                                height: 72,
                                width: 72,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(50, 52, 67, 1),
                                  border: Border.all(
                                    color:
                                        const Color.fromRGBO(76, 169, 255, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(72),
                                ),
                                child: Icon(
                                  skill.icon,
                                  color: ColorsApp.textColor,
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
            // Project
            const SizedBox(height: 100),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Project",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 48,
                      color: ColorsApp.textColor),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  // width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: dummyProject.length,
                    itemBuilder: (context, index) {
                      Project project = dummyProject[index];

                      return Container(
                        margin: const EdgeInsets.only(bottom: 60),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              project.url,
                              height: 282,
                              width: 555,
                              fit: BoxFit.fill,
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),

                                //
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      project.category,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        color: Color.fromRGBO(219, 219, 219, 1),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    const SizedBox(height: 25),
                                    Text(
                                      project.title,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 48,
                                        color: ColorsApp.textColor,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    const SizedBox(height: 30),
                                    Text(
                                      project.description,
                                      textAlign: TextAlign.justify,
                                      style: const TextStyle(
                                        height: 1.5,
                                        fontSize: 18,
                                        color: Color.fromRGBO(212, 212, 212, 1),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      maxLines: 3,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),

            // footer
            const Divider(),
            const SizedBox(height: 90),
            Column(
              children: [
                const Text(
                  "React me out",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: ColorsApp.textColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        launchUrlString("https://github.com/Hawarikun");
                      },
                      icon: const Icon(
                        FontAwesomeIcons.github,
                        size: 24,
                        color: ColorsApp.textColor,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        launchUrlString(
                            "https://id.linkedin.com/in/ciptaraka-nurhisam-hawari-4059b2282?trk=people-guest_people_search-card");
                      },
                      icon: const Icon(
                        FontAwesomeIcons.linkedin,
                        size: 24,
                        color: ColorsApp.textColor,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 50)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.mouse,
        PointerDeviceKind.touch,
        PointerDeviceKind.stylus,
        PointerDeviceKind.unknown
        // etc.
      };
}
