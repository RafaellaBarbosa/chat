class ChatUser {
  final String id;
  final String name;
  final String email;
  final String imageURL;

  const ChatUser({
    required this.id,
    required this.name,
    required this.email,
    required this.imageURL,
  });

  factory ChatUser.fromMap(Map<String, dynamic> map, String id) {
    return ChatUser(
      id: id,
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      imageURL: map['imageURL'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {'name': name, 'email': email, 'imageURL': imageURL};
  }

  @override
  String toString() {
    return 'ChatUser(id: $id, name: $name, email: $email, imageURL: $imageURL)';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatUser &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          email == other.email;

  @override
  int get hashCode => id.hashCode ^ email.hashCode;
}
