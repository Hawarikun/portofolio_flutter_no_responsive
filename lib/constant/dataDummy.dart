import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portofolio/model/project.dart';
import 'package:portofolio/model/skill.dart';

final List<Skill> dummySkill = [
  Skill(
    icon: FontAwesomeIcons.earthAsia,
    title: "Web Development",
    description:
        "Web development is the process of creating and maintaining websites and web applications. It encompasses a range of skills and technologies used to design, build, and deploy interactive and visually appealing online experiences.",
  ),
  Skill(
    icon: FontAwesomeIcons.mobileScreen,
    title: "Mobile Dev",
    description:
        "Mobile development refers to the process of creating applications for mobile devices, such as smartphones and tablets.",
  ),
  Skill(
    icon: FontAwesomeIcons.pencil,
    title: "UI/UX Design",
    description:
        "UI/UX design, often referred to as User Interface (UI) and User Experience (UX) design, is a multidisciplinary field focused on creating digital products that are visually appealing, intuitive, and provide a positive user experience.",
  ),
];

final List<Project> dummyProject = [
  Project(
      url: "https://i.ibb.co/GcybBwW/a.png",
      category: "Mobile Dev",
      title: "ListEase",
      description:
          "ListEase is your loyal friend in a busy day filled with tasks that need to be completed. With a clean interface and intuitive features, ListEase helps you manage daily tasks easily, so you can focus on achieving your goals. ListEase is designed to make it easier for users to manage daily tasks without having to face complications. Start your day with an organized to-do list and gain satisfaction from the accomplishment of each task you complete."),
  Project(
      url: "https://i.ibb.co/28DsyHr/Ent-Shif2t.png",
      category: "Mobile Dev",
      title: "Entshift",
      description:
          "EntShift is an innovative solution in Human Resources (HR) management designed to help companies optimize operations and team management efficiently. With advanced features and an intuitive user experience, EntShift empowers HR teams to create a more productive work environment. With EntShift, companies can increase human resource management efficiency, strengthen employee engagement, and create a work environment that supports growth and innovation. Simplify administrative tasks and focus energy on developing and growing your team."),
  Project(
      url: "https://i.ibb.co/GcybBwW/a.png",
      category: "Mobile Dev",
      title: "Expend Record",
      description:
          "The Expend Record application is an advanced and easy-to-use solution to record and track your money expenses effectively. With an intuitive interface and powerful features, this app helps you manage your personal finances more efficiently. With Expend Record, you can take full control of your personal finances, make better decisions, and achieve your financial goals more effectively. Don't let expenses be a mystery. Protect and manage your finances with apps designed to help you succeed financially."),
];
