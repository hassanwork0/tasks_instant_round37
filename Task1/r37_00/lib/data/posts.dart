//id-post body
final List<String> posts = [];

List<String> getAllPosts() {
  return posts;
}

String? getPost(int id) {
  if (posts.isEmpty) {
    return null;
  }
  // return posts.firstWhere((post) => int.parse(post.split('-')[0]) == id);
  for (String post in posts) {
    if (int.parse(post.split('-')[0]) == id) {
      return post;
    }
  }
  return null;
}

bool createPost(String post) {
  posts.add(post);
  return true;
}

String? updatePost(String? oldPost, String newPost) {
  if (oldPost == null) {
    return null;
  }
  final index = posts.indexOf(oldPost);
  final post = "${posts[index].split('-')[0]}-$newPost";
  posts[index] = post;
  return posts[index];
}

bool deletePost(String post) {
  return posts.remove(post);
}
