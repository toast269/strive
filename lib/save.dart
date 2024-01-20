class Save {
  static Map<String, dynamic> details = {};

  static void saveDetails(
    int selectedCircle,
    String label,
    String location,
    String phoneNumber,
    String aadharNumber,
  ) {
    details = {
      'selectedCircle': selectedCircle,
      'label': label,
      'location': location,
      'phoneNumber': phoneNumber,
      'aadharNumber': aadharNumber,
    };
  }
}
