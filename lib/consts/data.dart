import 'package:awesome_portfolio/models/app_model.dart';
import 'package:awesome_portfolio/models/color_model.dart';
import 'package:awesome_portfolio/models/device_model.dart';
import 'package:awesome_portfolio/screen/miniProjects/education/education.dart';
import 'package:awesome_portfolio/screen/miniProjects/experience/experience.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/experience_model.dart';
import '../models/skill_model.dart';
import '../screen/miniProjects/about/about.dart';
import '../screen/miniProjects/skills/skills.dart';

const double baseHeight = 790;
const double baseWidth = 1440;

List<DeviceModel> devices = [
  DeviceModel(
    device: Devices.android.samsungGalaxyNote20Ultra,
    icon: Icons.android,
  ),
  DeviceModel(
    device: Devices.ios.iPhone13ProMax,
    icon: Icons.apple,
  ),
  DeviceModel(
    device: Devices.ios.iPad12InchesGen4,
    icon: Icons.tablet,
  ),
];

List<ColorModel> colorPalette = [
  ColorModel(
    svgPath: "assets/images/cloudRed.svg",
    color: Colors.yellowAccent,
    gradient: const LinearGradient(
      begin: Alignment.bottomLeft,
      // transform: Grad,
      end: Alignment.topRight,
      colors: [Colors.yellowAccent, Colors.deepOrange],
    ),
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: Colors.blue,
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      colors: [Colors.blue, Colors.black45],
    ),
  ),
  ColorModel(
      svgPath: "assets/images/cloudyBlue.svg",
      color: const Color(0xff00d6ca),
      gradient: const LinearGradient(
        colors: [Color(0xff00ebd5), Color(0xff293474)],
        stops: [0, 1],
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
      )),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: const Color(0xff123cd1),
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment(-0.31, 0.95),
      colors: [Color(0xFF1042F4), Color(0x00203EA6)],
    ),
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: Colors.purple,
    gradient: const LinearGradient(
      colors: [Color(0xffc95edb), Colors.black12],
      stops: [0, 1],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: const Color(0xfff35a32),
    gradient: const LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [Colors.indigo, Colors.deepOrange], // Adjust colors as needed
    ),
  ),
];

List<AppModel> apps = [
  AppModel(
      title: "About",
      color: Colors.white,
      icon: Icons.person,
      screen: const AboutMe()),
  AppModel(
      title: "Experience",
      color: Colors.white,
      icon: FontAwesomeIcons.idBadge,
      screen: const Experience()
  ),
  AppModel(
      title: "Skills",
      color: Colors.white,
      icon: Icons.ac_unit_rounded,
      screen: const Skills()
  ),
  AppModel(
    title: "Education",
    color: Colors.white,
    icon: FontAwesomeIcons.edge,
    screen: const Education(),
  ),
  AppModel(
    title: "Women Safety",
    color: Colors.white,
    icon: FontAwesomeIcons.appStore,
    screen:null
  ), AppModel(
    title: "E-commerce",
    color: Colors.white,
    icon: FontAwesomeIcons.appStore,
    screen:null
  ), AppModel(
    title: "Education App",
    color: Colors.white,
    icon: FontAwesomeIcons.appStore,
    screen:null,
  ),
  AppModel(
    title: "Reidius Infra",
    color: Colors.white,
    icon: FontAwesomeIcons.appStore,
    screen:null,
  ),
];

final List<JobExperience> education = [
  JobExperience(
    color: Colors.red,
    location: "India, mumbai",
    title: 'Computer Engineering',
    company: 'Rajiv Gandhi Institute of Technology',
    startDate: 'June 2022',
    endDate: 'Present',
    bulletPoints: ["Currently in the third year of my college!",
    ],
  ),

  JobExperience(
    color: Colors.blue,
    location: "Mumbai, India",
    title: "12th",
    company: 'Wilson College',
    startDate: 'June 2019',
    endDate: 'June 2020',
    bulletPoints: [
      'Some of the best years of college life',
    ],
  ),

  JobExperience(
    color: Colors.blue,
    location: "Mahrashtra, Jalana",
    title: "10th",
    company: 'Dharmveer Sambhaji Highshool Domegoan',
    startDate: 'june 2016',
    endDate: 'June 2017',
    bulletPoints: [
      'Some of the best years of college life',
    ],
  ),
];


final List<JobExperience> jobExperiences = [
  JobExperience(
    color: Colors.blue,
    location: "mumbai, india",
    title: 'Full Flutter Developer',
    company: 'Chemisphere',
    startDate: 'July 2024',
    endDate: 'Aug 2024',
    bulletPoints: [
      "Contributed to enhancing both the education app and web admin panel using Flutter technology. Developed a",
      "robust user authentication system via the admin panel for subscribed users, allowing seamless profile updates",
      "Managed student batches, organized notes, previous year question papers (PYQS) by batch, and facilitated live",
      "lectures directly from the app. Additionally, implemented features to manage test series, allowing users to take",
      "tests, and generating user test scorecards to provide insightful analysis of student progress through dynamic visualizations. 📊💻",
    ],
  ),
  // Add more job experiences here...
  JobExperience(
    color: Colors.redAccent,
    location: "Remote",
    title: 'Full Flutter Developer',
    company: 'Reidius Infra',
    startDate: 'Aug 2024',
    endDate: 'Running',
    bulletPoints: [
      // "Establish voice calling functionality using Agora SDK to enable real-time communication within the app.",
      // "Implement intricate animations using Rive, enhancing the app's visual appeal and engagement.",
      // "Collaborate directly with Stanza Living's CTO, gaining insights into industry best practices and cutting-edge technologies.",
      // "Acquire proficiency in server-driven UI setup, optimizing app flexibility and scalability through dynamic configuration.",
    ],
  ),
  JobExperience(
    color: Colors.orangeAccent,
    location: "Remote",
    title: 'App Developer',
    company: 'Coding WithT',
    startDate: 'Oct 2024',
    endDate: 'Nov 2024',
    bulletPoints: [
      // "Collaborated with founders to develop a HealthifyMe clone, demonstrating strong teamwork and app development skills.",
      // "Engineered complex animations to enhance user experience and app visual appeal.",
      // "Played an active role in system design processes, contributing to efficient and scalable app architecture.",
    ],
  ),
  // JobExperience(
  //   color: Colors.greenAccent,
  //   location: "Remote",
  //   title: 'App Developer',
  //   company: 'Kylo Apps',
  //   startDate: 'Sep 2021',
  //   endDate: 'Oct 2021',
  //   bulletPoints: [
  //     "Collaborated as a team member in developing a cryptocurrency wallet, akin to Trust Wallet, showcasing strong teamwork and blockchain app development expertise.",
  //     "Proficiently integrated REST APIs into the application, enhancing its functionality and connectivity with external services."
  //   ],
  // ),
  // JobExperience(
  //   color: Colors.black,
  //   location: "Remote",
  //   title: 'Flutter App Intern',
  //   company: 'Cogent Web Services',
  //   startDate: 'Dec 2020',
  //   endDate: 'June 2021',
  //   bulletPoints: [
  //     "Independently developed a Life Simulator game using Flutter from scratch, applying state-of-the-art state management practices to ensure a top-tier user experience.",
  //     "Leveraged Flutter's robust features to craft an immersive and captivating gameplay experience, demonstrating proficiency in app development.",
  //     "Successfully implemented Google Ads, in-app purchases, and Hive database for efficient user data storage and monetization strategies.",
  //     "Generated creative ideas for client pitches, fostering creativity and ensuring the game's entertainment value and thought-provoking nature.",
  //     "Published the game on the Play Store, achieving over 5,000 downloads, showcasing the ability to deliver a popular and engaging mobile application.",
  //   ],
  // ),
];

const String youtubeChannel = "https://www.youtube.com/@highcoder";
const String linkedIn = "https://www.linkedin.com/in/high-coder/";
const String github = "https://github.com/high-coder";
const String twitter = "https://twitter.com/highcoder__";
const String toLinkdin = "https://www.linkedin.com/in/yuvaraj-dekhane-473064297/";
const String toGithub = "https://github.com/yuvaraj8080";
const String toInstagram = "https://www.instagram.com/yuvaraj_dekhane/";
const String resumeLink =
    "https://drive.google.com/file/d/1LO3Km6fFkJVW92MNXRLSYl--E9YlTHJd/view";
const String email = "teamloading8080@gmail.com";
String introduction = "Hi, I’m Yuvaraj Dekhane. I completed my schooling in Jalane, Maharashtra, I then attended Wilson College in Mumbai for my 12th grade, I am currently a third-year Computer Science student at RGIT, Andheri, Mumbai University.I have developed strong skills in Java, Dart, and C Programing Languages. Over the past year, I have focused on Flutter development and have become proficient in building Flutter apps using state management tools such as Getx and Bloc, and utilizing Firebase for backend services. My Flutter journey has also included learning Tflite, RestAPI, DataTable, and Flutter web technology.I have built more than 15+ apps, which include social, helpful and safety apps, business-related apps, machine learning apps, and educational apps. Additionally, I have developed apps for hackathons and Pitches idea for ideathons, through which I have acquired skills in communication, team management, and project management. I also working as a Flutter Developer intern at Chemisphere for three months Apart from academics, I enjoy creating real-time applications and building challenging apps. I am passionate about continuing to develop my skills and contributing to innovative projects.";
const String playApps = "https://play.google.com/store/apps/developer?id=AppyMonk";

List<SkillsModel> skills = [
  SkillsModel(skillName: "Flutter",
      colorS: Colors.blue,
      iconPath: "random"),
  SkillsModel(
    skillName: "Firebase",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "Dart",
    colorS: Colors.blue,
  ),
  SkillsModel(
    skillName: "Provider",
    colorS: Colors.orange,
  ),
  SkillsModel(
    skillName: "GetX",
    colorS: Colors.blue,
  ),
  SkillsModel(
    skillName: "Bloc",
    colorS: Colors.blue,
  ),
  SkillsModel(
    skillName: "Java",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "C",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "TypeScript",
    colorS: Colors.orange,
  ),
  SkillsModel(
    skillName: "Node.js",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "MongoDb",
    colorS: Colors.yellow,
  ),

  SkillsModel(
    skillName: "Tflite",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "Flutter Web",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "Github",
    colorS: Colors.yellow,
  ),

  SkillsModel(
    skillName: "Android Studio",
    colorS: Colors.yellow,
  ),

];

List<SkillsModel> languages = [
  SkillsModel(skillName: "Marathi", colorS: Colors.orange),
  SkillsModel(skillName: "Hindi", colorS: Colors.black),
  SkillsModel(skillName: "English", colorS: Colors.blueGrey),
];
