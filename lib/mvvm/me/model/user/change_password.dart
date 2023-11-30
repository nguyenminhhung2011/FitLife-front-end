class ChangePassword {
  final String oldPassword;
  final String newPassword;
  final String confirmPassword;
  ChangePassword({
    required this.oldPassword,
    required this.newPassword,
    required this.confirmPassword,
  });

  Map<String, dynamic> get toMap => {
        "oldPassword": oldPassword,
        "newPassword": newPassword,
        "confirmPassword": confirmPassword,
      };
}
