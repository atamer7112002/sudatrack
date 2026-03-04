import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/itemcatalog/edit_item_catalogsheet/edit_item_catalogsheet_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'editbutton_category_model.dart';
export 'editbutton_category_model.dart';

class EditbuttonCategoryWidget extends StatefulWidget {
  const EditbuttonCategoryWidget({
    super.key,
    required this.categoryNam,
    required this.isActive,
    required this.categoryDocRef,
  });

  final String? categoryNam;
  final bool? isActive;
  final DocumentReference? categoryDocRef;

  @override
  State<EditbuttonCategoryWidget> createState() =>
      _EditbuttonCategoryWidgetState();
}

class _EditbuttonCategoryWidgetState extends State<EditbuttonCategoryWidget> {
  late EditbuttonCategoryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditbuttonCategoryModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowIconButton(
      borderRadius: 8.0,
      buttonSize: 40.0,
      icon: Icon(
        Icons.edit_sharp,
        color: FlutterFlowTheme.of(context).primary,
        size: 24.0,
      ),
      onPressed: () async {
        await showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          enableDrag: false,
          context: context,
          builder: (context) {
            return Padding(
              padding: MediaQuery.viewInsetsOf(context),
              child: EditItemCatalogsheetWidget(
                currentName: widget!.categoryNam!,
                itemDoc: widget!.categoryDocRef!,
              ),
            );
          },
        ).then((value) => safeSetState(() {}));
      },
    );
  }
}
