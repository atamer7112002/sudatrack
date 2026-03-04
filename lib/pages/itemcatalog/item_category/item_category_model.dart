import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/itemcatalog/edit_item_catalogsheet/edit_item_catalogsheet_widget.dart';
import '/pages/itemcatalog/editbutton_category/editbutton_category_widget.dart';
import 'dart:ui';
import 'item_category_widget.dart' show ItemCategoryWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ItemCategoryModel extends FlutterFlowModel<ItemCategoryWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for editbuttonCategory component.
  late EditbuttonCategoryModel editbuttonCategoryModel;
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {
    editbuttonCategoryModel =
        createModel(context, () => EditbuttonCategoryModel());
  }

  @override
  void dispose() {
    editbuttonCategoryModel.dispose();
  }
}
