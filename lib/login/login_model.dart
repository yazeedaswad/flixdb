import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for passtextfield widget.
  FocusNode? passtextfieldFocusNode;
  TextEditingController? passtextfieldController;
  late bool passtextfieldVisibility;
  String? Function(BuildContext, String?)? passtextfieldControllerValidator;
  // State field(s) for emailtextfield widget.
  FocusNode? emailtextfieldFocusNode;
  TextEditingController? emailtextfieldController;
  String? Function(BuildContext, String?)? emailtextfieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passtextfieldVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    passtextfieldFocusNode?.dispose();
    passtextfieldController?.dispose();

    emailtextfieldFocusNode?.dispose();
    emailtextfieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
