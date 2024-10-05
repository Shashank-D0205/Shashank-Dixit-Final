part of 'values.dart';

class CertificationData {
  CertificationData({
    required this.title,
    required this.image,
    required this.imageSize,
    required this.url,
    required this.awardedBy,
  });

  final String image;
  final double imageSize;
  final String url;
  final String title;
  final String awardedBy;
}

class NoteWorthyProjectDetails {
  NoteWorthyProjectDetails({
    required this.projectName,
    required this.isOnPlayStore,
    required this.isPublic,
    required this.technologyUsed,
    required this.isWeb,
    required this.isLive,
    this.projectDescription,
    this.playStoreUrl,
    this.webUrl,
    this.hasBeenReleased,
    this.gitHubUrl,
  });

  final String projectName;
  final bool isPublic;
  final bool isOnPlayStore;
  final bool isWeb;
  final String? projectDescription;
  final bool isLive;
  final bool? hasBeenReleased;
  final String? playStoreUrl;
  final String? gitHubUrl;
  final String? webUrl;
  final String? technologyUsed;
}

class ExperienceData {
  ExperienceData({
    required this.position,
    required this.roles,
    required this.location,
    required this.duration,
    required this.company,
    this.companyUrl,
  });

  final String company;
  final String? companyUrl;
  final String location;
  final String duration;
  final String position;
  final List<String> roles;
}

class SkillData {
  SkillData({
    required this.skillName,
    required this.skillLevel,
  });

  final String skillName;
  final double skillLevel;
}

class SubMenuData {
  SubMenuData({
    required this.title,
    this.isSelected,
    this.content,
    this.skillData,
    this.isAnimation = false,
  });

  final String title;
  final String? content;
  final List<SkillData>? skillData;
  bool isAnimation;
  bool? isSelected;
}

class Data {
  static List<NavItemData> menuItems = [
    NavItemData(name: StringConst.HOME, route: StringConst.HOME_PAGE),
    NavItemData(name: StringConst.ABOUT, route: StringConst.ABOUT_PAGE),
    NavItemData(name: StringConst.PROJECTS, route: StringConst.PROJECTS_PAGE),
    // NavItemData(
    //   name: StringConst.EXPERIENCE,
    //   route: StringConst.EXPERIENCE_PAGE,
    // ),
    NavItemData(
      name: StringConst.CERTIFICATIONS,
      route: StringConst.CERTIFICATION_PAGE,
    ),
    NavItemData(name: StringConst.CONTACT, route: StringConst.CONTACT_PAGE),
  ];

  static List<SocialData> socialData = [
    SocialData(
      name: StringConst.GITHUB,
      iconData: FontAwesomeIcons.github,
      url: StringConst.GITHUB_URL,
    ),
    SocialData(
      name: StringConst.LINKED_IN,
      iconData: FontAwesomeIcons.linkedin,
      url: StringConst.LINKED_IN_URL,
    ),

    SocialData(
      name: StringConst.INSTAGRAM,
      iconData: FontAwesomeIcons.instagram,
      url: StringConst.INSTAGRAM_URL,
    ),
    SocialData(
        name: StringConst.X,
        iconData: FontAwesomeIcons.xTwitter,
        url: StringConst.X_URL)
  ];

  static List<String> mobileTechnologies = [
    "Android",
    "Dart",
    "Jetpack Compose",
    "Flutter",
  ];

  static List<String> otherTechnologies = [
    "Git",
    "AWS",
    "Google Cloud",
    "MySQL",
    "C++",
    "Firebase",
    "GCC",
    "Visual Studio",
    "Arduino",

  ];
  static List<SocialData> socialData1 = [
    SocialData(
      name: StringConst.GITHUB,
      iconData: FontAwesomeIcons.github,
      url: StringConst.GITHUB_URL,
    ),
    SocialData(
      name: StringConst.LINKED_IN,
      iconData: FontAwesomeIcons.linkedin,
      url: StringConst.LINKED_IN_URL,
    ),
    SocialData(
        name: StringConst.X,
        iconData: FontAwesomeIcons.squareTwitter,
        url: StringConst.X_URL)

  ];

  static List<SocialData> socialData2 = [
    SocialData(
      name: StringConst.LINKED_IN,
      iconData: FontAwesomeIcons.linkedin,
      url: StringConst.LINKED_IN_URL,
    ),

    SocialData(
      name: StringConst.INSTAGRAM,
      iconData: FontAwesomeIcons.instagram,
      url: StringConst.INSTAGRAM_URL,
    ),

  ];

  static List<ProjectItemData> recentWorks = [
    Projects.Yuva_Anubhav,
    Projects.CURIFY,
    Projects.CV,
  ];

  static List<ProjectItemData> projects = [
    Projects.Yuva_Anubhav,
    Projects.CURIFY,
    Projects.CV,

  ];

  // static List<NoteWorthyProjectDetails> noteworthyProjects = [
  //   NoteWorthyProjectDetails(
  //     projectName: StringConst.UDAGRAM_IMAGE_FILTERING,
  //     isPublic: true,
  //     isOnPlayStore: false,
  //     isWeb: false,
  //     technologyUsed: StringConst.UDAGRAM_IMAGE_FILTERING_TECH,
  //     projectDescription: StringConst.UDAGRAM_IMAGE_FILTERING_DETAIL,
  //     gitHubUrl: StringConst.UDAGRAM_IMAGE_FILTERING_GITHUB_URL,
  //     isLive: false,
  //   ),
  //];

  static List<CertificationData> certificationData = [
    CertificationData(
      title: StringConst.AWS_CP,
      url: StringConst.AWS_CP_url,
      image: ImagePath.AWS_CP,
      imageSize: 0.325,
      awardedBy: StringConst.AWS,
    ),
    CertificationData(
      title: StringConst.AWS_SAA,
      url: StringConst.AWS_SAA_url,
      image: ImagePath.AWS_SAA,
      imageSize: 0.325,
      awardedBy: StringConst.AWS,
    ),
    CertificationData(
      title: StringConst.CC,
      url: StringConst.NPTEL_URL,
      image: ImagePath.NPTELCC,
      imageSize: 0.325,
      awardedBy: StringConst.NPTEL,
    ),
    CertificationData(
      title: StringConst.IIoT,
      url: StringConst.IIoT_URL,
      image: ImagePath.IIOT,
      imageSize: 0.325,
      awardedBy: StringConst.Coursera,
    ),

  ];

}

class Projects {
  static ProjectItemData Yuva_Anubhav = ProjectItemData(
    title: StringConst.YuvaAnubhav,
    subtitle: StringConst.Yuva_Anubhav_SUBTITLE,
    platform: StringConst.Yuva_Anubhav_PLATFORM,
    primaryColor: AppColors.YuvaAnubhav,
    image: ImagePath.Yuva_Anubhav_Cover,
    coverUrl: ImagePath.Yuva_Anubhav_Screens,
    navSelectedTitleColor: AppColors.CurifySelectedNavTitle,
    appLogoColor: AppColors.CurifyAppLogo,
    projectAssets: [

    ],
    category: StringConst.Yuva_Anubhav_CATEGORY,
    portfolioDescription: StringConst.Yuva_Anubhav_DETAIL,
    isPublic: true,
    isOnPlayStore: false,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.Yuva_Anubhav_GITHUB_URL,
    playStoreUrl: StringConst.Yuva_Anubhav_PLAYSTORE_URL,
  );
  static ProjectItemData CURIFY = ProjectItemData(
    title: StringConst.CURIFY,
    subtitle: StringConst.CURIFY_SUBTITLE,
    platform: StringConst.CURIFY_PLATFORM,
    primaryColor: AppColors.Curify,
    image: ImagePath.CURIFY_COVER,
    coverUrl: ImagePath.CURIFY_SCREENS,
    navSelectedTitleColor: AppColors.CurifySelectedNavTitle,
    appLogoColor: AppColors.CurifyAppLogo,
    projectAssets: [
    ],
    category: StringConst.CURIFY_CATEGORY,
    portfolioDescription: StringConst.CURIFY_DETAIL,
    isPublic: true,
    isOnPlayStore: false,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.CURIFY_GITHUB_URL,
    // playStoreUrl: StringConst.CURIFY_PLAYSTORE_URL,
  );
  static ProjectItemData CV = ProjectItemData(
    title: StringConst.CV,
    subtitle: StringConst.CV_SUBTITLE,
    platform: StringConst.CV_PLATFORM,
    primaryColor: AppColors.SDev,
    image: ImagePath.CV_COVER,
    category: StringConst.CV_CATEGORY,
    designer: StringConst.CV_DESIGNER,
    coverUrl: ImagePath.CV_COVER,
    navTitleColor: AppColors.CVNavTitle,
    navSelectedTitleColor: AppColors.CVSelectedNavTitle,
    appLogoColor: AppColors.CVAppLogo,
    projectAssets: [
      ],
    portfolioDescription: StringConst.CV_DETAIL,
    isPublic: true,
    isOnPlayStore: false,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.CV_GITHUB_URL,
    // playStoreUrl: StringConst.CV_PLAYSTORE_URL,
  );


}

class DocumentPath {
  //Docs route
  static const String docDir = "assets/assets/docs";
  // static const String docDir = "assets/documents";

  //Docs
  static const String CV = "$docDir/cv.pdf";
}