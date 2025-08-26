import 'dart:io';

enum AuthMode { signup, login }

class AuthFormData {
  final String name;
  final String email;
  final String password;
  final File? image;
  AuthMode mode;

  AuthFormData({
    this.name = '',
    this.email = '',
    this.password = '',
    this.image,
    this.mode = AuthMode.login,
  });

  bool get isLogin => mode == AuthMode.login;
  bool get isSignup => mode == AuthMode.signup;
  
  void toggleAuthMode() => mode = isLogin ? AuthMode.signup : AuthMode.login;

  AuthFormData copyWith({
    String? name,
    String? email,
    String? password,
    File? image,
    AuthMode? mode,
  }) {
    return AuthFormData(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      image: image ?? this.image,
      mode: mode ?? this.mode,
    );
  }

  bool get isValidEmail => email.contains('@');
  bool get isValidPassword => password.length >= 6;
}
