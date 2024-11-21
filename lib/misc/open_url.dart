import 'package:url_launcher/url_launcher.dart';

void openUrl(String serviceName) {
  switch (serviceName) {
    case "Discord":
      launchUrl(Uri.parse('https://discord.com/users/627048903644282880'));
      break;
    case "Steam":
      launchUrl(
          Uri.parse("https://steamcommunity.com/profiles/76561198965739688"));
      break;
    case "GitHub":
      launchUrl(Uri.parse("https://github.com/CosmicRaptor"));
      break;
  }
}
