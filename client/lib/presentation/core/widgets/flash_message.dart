import 'package:flutter/material.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason>
    getWrappedFlashMessage(BuildContext currentContext, String displayMessage) {
  return ScaffoldMessenger.of(currentContext).showSnackBar(
    SnackBar(
      key: ValueKey("ScaffoldMessenger"),
      content: Text(displayMessage),
    ),
  );
}
