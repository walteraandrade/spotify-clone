String? taqTextFieldValidation(value) {
  if (value == null || value.isEmpty) {
    return 'Required field';
  }
  return null;
}
