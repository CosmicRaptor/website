String getImagePath(String inputText) {
  switch (inputText) {
    case "Discord":
      return "assets/discord.png";
    case "Steam":
      return "assets/steam.png";
    case "GitHub":
      return "assets/github.png";
    default:
      return "assets/discord.png";
  }
}
