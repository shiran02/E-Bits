
class Vvalidator {

  // check equal confirm password and password -----------------------------------



  static String? VCheckEqualityPassword(String? password, String? confirmPassword){
    if (password == null || password.isEmpty) {
      return 'password is required';
    }

    if (confirmPassword == null || confirmPassword.isEmpty) {
      return 'Confirm password is required';
    }

    if(password == confirmPassword){
      return 'Re-Enter Password is Not match';
    }
    return null;


  }


  // vali date Email --------------------------------------------------------------


  static String? VvalideEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    // regular expression for email validation

    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid Email';
    }

    return null;
  }

  // validate Password ----------------------------------------------------------


  static String? validatePassword(String? value){
    if(value == null || value.isEmpty){
      return 'Password id required';
    }

    // check for minimum password length
    if(value.length < 4){
        return 'Password must be at least 6 characters long';
    }

    // check for upper case letters

    // if(!value.contains(RegExp(r'[A-Z]'))){
    //   return 'Password must Contains at least one UpperCase letter';
    // }

    // // check for numbers

    // if(!value.contains(RegExp(r'[0-9]'))){
    //   return 'Password must Contains at least one number';
    // }

    // // check for special characters

    // if(!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))){
    //   return 'Password must Contains at least one Special character.';
    // }

    return null;


  }

  // validate Empty Text ----------------------------------------------------------------------

  static String? validateEmptyText(String? fieldName , String? value){
    if(value == null || value.isEmpty){
      return '$fieldName is reqiured';
    }

    return null;
  }

  // validate phone number ---------------------------------------------------------------------

  static String? validatePhoneNumber(String? value){
    if(value == null || value.isEmpty){
      return 'Phone Number is required';
    }

    // Regular expression for phone number validation (assuming a 10-digit US phone Number format)

    final phoneRegExp = RegExp(r'^\d{10}$');

    if(!phoneRegExp.hasMatch(value)){
      return 'Invalid phone Number format (10 disit required).';
    }

    return null;
  }

  // Enter OTP Validatoe

  static String? validateOtpCode(String? value){
    if(value == null || value.isEmpty){
      return 'OTP Code required';
    }

    // check for minimum password length
    if(value.length < 5){
        return 'OTP must be 5 characters long';
    }

    // check for upper case letters

    if(value.contains(RegExp(r'[A-Z]'))){
      return 'OTP must Not Contains at UpperCase letter';
    }

    // // check for numbers

    // if(!value.contains(RegExp(r'[0-9]'))){
    //   return 'Password must Contains at least one number';
    // }

    // // check for special characters

    // if(!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))){
    //   return 'Password must Contains at least one Special character.';
    // }

    return null;


  }






}
