import 'package:intl/intl.dart';

class TFormatter {
  static String formatDate(DateTime? date){ // null safety
     date ??= DateTime.now(); // if date is null assign current date 
     return DateFormat('dd-MMM-yyyy').format(date); // customize the date format as needed
  }


  static String formatCurrency(double amount){
    return NumberFormat.currency(locale:'en_US', symbol: '\$').format(amount);
  }



 static String formatPhoneNumber(String phoneNumber)
 {
  // assuming phone number is 10 digits long in US format
  if(phoneNumber.length == 10){
    return '(${phoneNumber.substring(0,3)}) ${phoneNumber.substring(3,6)}-${phoneNumber.substring(6,10)}';
  }
  else if(phoneNumber.length == 11){
    return '(${phoneNumber.substring(0,1)}) ${phoneNumber.substring(1,4)}-${phoneNumber.substring(4,7)}-${phoneNumber.substring(7,11)}';
  }
  return phoneNumber; // return as is if format is unrecognized
 }


 static String internationalFormatPhoneNumber(String phoneNumber)
 {
  var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), ''); // remove non-digit characters

// Guard clause: If the number is too short to even have a country code
    if (digitsOnly.length < 3) return phoneNumber;

  String countryCode = '+${digitsOnly.substring(0,2)}';
  digitsOnly = digitsOnly.substring(2); // remove country code

  final formattedNumber = StringBuffer();
  formattedNumber.write('($countryCode)');

  int i = 0;
  while(i < digitsOnly.length){
    int groupLength = 2;
    if( i == 0 && countryCode == '+1'){
      groupLength = 3; // for US country code first group is 3 digits
    }
  
  int end = i + groupLength;
  formattedNumber.write(digitsOnly.substring(i, end));

  if(end < digitsOnly.length){
    formattedNumber.write(' ');
  }
  i = end;
  }
   return formattedNumber.toString();

 }
}