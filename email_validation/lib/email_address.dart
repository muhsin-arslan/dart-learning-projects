class EmailAddress {
  late String address;

  EmailAddress(String emailAddress) {
    if (emailAddress.isEmpty) {
      throw FormatException('Email address cannot be empty.');
    }

    if (!emailAddress.contains('@')) {
      throw FormatException("$emailAddress doesn't contain the @ symbol.");
    }

    address = emailAddress;
  }

  @override
  String toString() => address;
}
