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
