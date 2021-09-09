import 'package:flutter/material.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason>
    getWrappedFlashMessage(BuildContext currentContext, String displayMessage) {
  return ScaffoldMessenger.of(currentContext).showSnackBar(
    SnackBar(
      content: Text(displayMessage),
    ),
  );
}
