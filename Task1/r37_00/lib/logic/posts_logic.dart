import 'package:r37_00/data/posts.dart';
import 'package:r37_00/view/get_input.dart';
import 'package:r37_00/view/show_console_msg.dart';

void showAllPosts() {
  List<String> posts = getAllPosts();

  if (posts.isEmpty) {
    return showConsoleMsg('No Posts Found');
  }

  for (String post in posts) {
    showConsoleMsg(post);
  }
}

void showPost() {
  showConsoleMsg(
    getPost(int.parse(getInput('Enter post id : '))) ?? "No Such Post",
  );
}

void addPost() {
  //id-body
  showConsoleMsg(
    createPost(
              "${posts.isEmpty ? 1 : int.parse(posts.last.split('-')[0]) + 1}-${getInput('Enter your post body : ')}",
            ) ==
            true
        ? "Post is Added"
        : "Error Creating Post",
  );
}

void editPost() {
  showConsoleMsg(
    updatePost(
          getPost(int.parse(getInput("Enter Old Post ID : "))),
          getInput("Enter New Post Body : "),
        ) ??
        "No Such Post",
  );
}

void removePost() {
  showConsoleMsg(
    deletePost(
              getPost(int.parse(getInput("Enter Post ID to delete : "))) ?? "",
            ) ==
            true
        ? "Post Deleted"
        : "Error Deleting the post",
  );
}
