import 'package:r37_00/core/localization/msgs.dart';
import 'package:r37_00/logic/posts_logic.dart';
import 'package:r37_00/view/get_action.dart';
import 'package:r37_00/view/get_input.dart';
import 'package:r37_00/view/show_console_msg.dart';

void runApp() {
  bool working = true;

  while (working) {
    showConsoleMsg(mainMenuMsg);

    String opt = getInput("Pick your option : ");

    switch (opt) {
      case "1":
        getAction(showAllPosts);
        break;
      case "2":
        getAction(showPost);
        break;
      case "3":
        getAction(addPost);
        break;
      case "4":
        getAction(editPost);
        break;
      case "5":
        getAction(removePost);
        break;
      case "6":
        working = false;
        break;
      default:
        showConsoleMsg("Error : Unkowen Input");
    }
  }
  showConsoleMsg(border);
}
