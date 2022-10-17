import 'package:email_validation/email_address.dart';

void main(List<String> arguments) {
  try {
    print(EmailAddress('me@example.com').toString());
    print(EmailAddress('example.com').toString());
    print(EmailAddress('').toString());
  } on FormatException catch (e) {
    print(e);
  }
}
