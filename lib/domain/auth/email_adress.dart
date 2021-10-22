/** import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_adress.freezed.dart';

class EmailAdress {
  final String value;
  final Either<Left, Right>failure;

  factory EmailAdress(String input)
  {
    return EmailAdress._(
      validateEmailAdress(input),
    );
  }

  const EmailAdress._(this.value, this.failure);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is EmailAdress &&
      other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
 
  @override 
  String toString() => 'EmailAdress(value: $value)';
}

String validateEmailAdress(String input)
{
   const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return input;
  } else {
    throw InvalidEmailFailure(failedValue: input);
  }
}

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T>
{
  const factory ValueFailure.invalidEmail({
    required String failedValue
  }) = InvalidEmail<T>;
}

class InvalidEmailFailure {
  final String failedValue;

  InvalidEmailFailure({required this.failedValue});
}

**/
 