import 'package:portfolio/model/skill.dart';
import 'package:portfolio/model/skill_item.dart';

final skillsData = [
  Skill(
    skillName: "Programming languages",
    skillItems: [
      SkillItem(skillName: "Dart", imageLocation: "dart.png"),
      SkillItem(skillName: "Kotlin", imageLocation: "Kotlin.png"),
      SkillItem(skillName: "C#", imageLocation: "c#.png"),
      SkillItem(skillName: "Java", imageLocation: "Java.png"),
      SkillItem(skillName: "PHP", imageLocation: "PHP.png"),
      SkillItem(skillName: "Python", imageLocation: "Python.png"),
    ],
  ),
  Skill(
    skillName: "Frameworks",
    skillItems: [
      SkillItem(skillName: "Flutter", imageLocation: "Flutter.png"),
      SkillItem(skillName: "Jetpack Compose", imageLocation: "compose.png"),
      SkillItem(skillName: ".Net", imageLocation: "net.png"),
    ],
  ),
  Skill(
    skillName: "Web Development",
    skillItems: [
      SkillItem(skillName: "HTML5", imageLocation: "Html.png"),
      SkillItem(skillName: "CSS", imageLocation: "CSS3.png"),
      SkillItem(skillName: "JavaScript", imageLocation: "JavaScript.png"),
    ],
  ),
  Skill(
    skillName: "Databases",
    skillItems: [
      SkillItem(skillName: "MySQl", imageLocation: "my_sql.png"),
      SkillItem(skillName: "SQLite", imageLocation: "SQLite.png"),
    ],
  ),
  Skill(
    skillName: "Tools & Environments",
    skillItems: [
      SkillItem(skillName: "Android Studio", imageLocation: "as.png"),
      SkillItem(skillName: "VS Code", imageLocation: "vs_code.png"),
      SkillItem(skillName: "Visual Studio", imageLocation: "vs.png"),
    ],
  ),
  Skill(
    skillName: "Version Control",
    skillItems: [
      SkillItem(skillName: "Git/Github", imageLocation: "Git.png"),
    ],
  ),
  Skill(
    skillName: "Design Tools",
    skillItems: [
      SkillItem(skillName: "Figma", imageLocation: "Figma.png"),
      SkillItem(skillName: "Photoshop", imageLocation: "ps.png"),
      SkillItem(skillName: "Adobe XD", imageLocation: "xd.png"),
      SkillItem(skillName: "Premiere Pro", imageLocation: "pr.png"),
      SkillItem(skillName: "Adobe Illustrator", imageLocation: "ai.png"),
    ],
  ),
];
