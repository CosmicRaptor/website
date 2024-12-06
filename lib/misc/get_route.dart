import 'package:icons_plus/icons_plus.dart';

String getRoute(String inputText) {
  switch (inputText) {
    case "Home":
      return "/";
    case "Photos":
      return "/photos";
    case "Projects":
      return "/projects";
    case "Socials":
      return "/socials";
    default:
      return "/";
  }
}

Brand getButton(String name){
  switch (name) {
    case "Discord":
      return Brand(Brands.discord);
    case "Steam":
      return Brand(Brands.steam);
    case "GitHub":
      return Brand(Brands.github);
    case "LinkedIn":
      return Brand(Brands.linkedin);
    case "Email":
      return Brand(Brands.gmail);
    default:
      return Brand(Brands.github);
  }
}
