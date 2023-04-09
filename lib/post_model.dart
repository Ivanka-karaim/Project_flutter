class Post {
  final String user_name;
  final String place;
  final String photo;
  final String description;


  Post( {required this.user_name,required this.place,required this.photo,required this.description});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(user_name: json['user_name'], place: json['place'], photo: json['photo'], description: json['description']);
  }

  @override
  String toString() {
    return 'Post{user_name: $user_name, place: $place, photo: $photo, description: $description}';
  }
}