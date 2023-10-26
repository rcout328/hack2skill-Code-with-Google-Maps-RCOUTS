import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'menuitem_widget.dart' show MenuitemWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MenuitemModel extends FlutterFlowModel<MenuitemWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for inputInstructions widget.
  FocusNode? inputInstructionsFocusNode;
  TextEditingController? inputInstructionsController;
  String? Function(BuildContext, String?)? inputInstructionsControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    inputInstructionsFocusNode?.dispose();
    inputInstructionsController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
