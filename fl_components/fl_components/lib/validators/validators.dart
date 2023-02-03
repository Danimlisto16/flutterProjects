class Validators {
  static String? validateName(String value) {
    if (value.length < 3) return "Debes ingresar 3 dígitos";
    return null;
  }

  static String? validateCed(String value) {
    int ced = 0;
    try {
      ced = int.parse(value);
      return null;
    } catch (ex) {
      print(ex);
      return "Ingresa un valor numerico";
    }
  }
}
