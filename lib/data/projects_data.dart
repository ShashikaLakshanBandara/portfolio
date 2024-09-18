import 'package:portfolio/model/project.dart';

final List<Project> allProjects = [
  Project(
      url: "https://github.com/ShashikaLakshanBandara/PhoneFinder",
      title: "Phone Finder",
      projectFolder: "phone_finder",
      imagesLocations: [
        "1.png",
        "3.png",
        "2.png",
      ],
      technologyIcons: ["as.png", "Kotlin.png"],
      description:
          "Developed an innovative Android application, \"Phone Finder\". This app uniquely enables users to control and locate their lost phones via text messages without requiring an internet connection. Key features include customizable commands, parental monitoring capabilities, and essential remote functions like sound control, location tracking, and flashlight activation. Designed using Android Studio and Kotlin, our solution offers a secure, efficient, and user-friendly approach to mobile security and device management"),
  Project(
      url: "https://github.com/ShashikaLakshanBandara/edu_buddy",
      title: "EducBuddy",
      projectFolder: "edu_buddy",
      imagesLocations: [
        "1.png",
        "3.png",
        "2.png",
      ],
      technologyIcons: ["Flutter.png", "dart.png", "SQLite.png", "as.png"],
      description:
          "Edu Buddy, a novel Android application designed to empower students by serving as a multifaceted learning companion. Edu Buddy transcends the limitations of traditional note-taking methods and rigid scheduling, fostering a dynamic and personalized learning experience."),
  Project(
      url:
          "https://github.com/ShashikaLakshanBandara/Vehicle-Parking-Manager-final",
      title: "Vehicle Parking System",
      projectFolder: "vehicle_parking_manager",
      imagesLocations: [
        "1.png",
        "3.png",
        "2.png",
      ],
      technologyIcons: ["vs.png", "c#.png", "SQLite.png"],
      description:
          "Developed an innovative Vehicle Parking Manager application that automates parking fee calculations, streamlines slot management, and enhances income tracking for vehicle parks. Leveraging advanced data validation, error handling, and a serverless SQLite database, this application ensures efficient and accurate parking operations. Key features include real-time slot status updates, automated error reporting, and customizable settings, making it a robust solution for modern parking management needs. Future enhancements will integrate license plate recognition via camera for a fully automated experience."),
];
