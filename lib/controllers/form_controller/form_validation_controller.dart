class FormValidation {
  //-- Full name validation
  static String? fullnameVerification(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter a valid name';
    } else {
      return null;
    }
  }

  //-- email validation
  static String? emailValidate(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }
    final emailRegExp = RegExp(r'^([\w-\.)+([\w-]*\.)+[\w-]{2,4}$');

    if (emailRegExp.hasMatch(value)) {
      return "Invalid email address";
    } else if (!value.contains("@gmail.com")) {
      return "invalid email";
    } else if (!value.contains("yahoo.com")) {
      return "invalid email";
    } else if (!value.contains("@gmail.com")) {
      return "invalid email";
    }
    return null;
  }

  //-- Phone Number validation
  static String? phoneNumberValidate(String? value) {
    if (value == null || value.isEmpty) {
      return "phone Number is required";
    }
    final phoneNumberReg = RegExp(r'^\d{11}$');

    if (phoneNumberReg.hasMatch(value)) {
      return "Invalid phone number";
    }
    return null;
  }

  //-- Age validation
  static String? ageValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Age is required";
    }

    if (value.length <= 17) {
      return "You should be at least 18 years to join";
    }
    return null;
  }

  //-- NIN validation
  // static String? ninVerification(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return "phone Number is required";
  //   } else if (value.length > 10) {
  //     return "phone Number is invalid";
  //   }
  //   return null;
  // }

  //-- password validation
  static String? passwordValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "password is required";
    } else if (value.length < 8) {
      return "password must be 8 characters long";
    }
    return null;
  }

  //-- Amount validation
  static String? amountVerification(String? value) {
    if (value == null || value.isEmpty) {
      return "amount is required";
    } else if (value.length < 500) {
      return "amount must be above NGN 500";
    }
    return null;
  }

  //-- pin validation
  static String? pinVerification(String? value) {
    if (value == null || value.isEmpty) {
      return "pin is required";
    }
    return null;
  }

  //-- pin validation
  static String? accountNumberVerification(String? value) {
    if (value == null || value.isEmpty) {
      return "account number is required";
    } else if (value.length < 10) {
      return "account number must be 10 digits long";
    } else if (value.length > 10) {
      return "account number must be 10 digits long";
    }
    return null;
  }
}
