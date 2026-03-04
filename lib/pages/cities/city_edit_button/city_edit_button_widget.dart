import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/cities/edit_city_bottom_sheet/edit_city_bottom_sheet_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'city_edit_button_model.dart';
export 'city_edit_button_model.dart';

class CityEditButtonWidget extends StatefulWidget {
  const CityEditButtonWidget({
    super.key,
    required this.cityDocRef,
    required this.currentName,
  });

  final DocumentReference? cityDocRef;
  final String? currentName;

  @override
  State<CityEditButtonWidget> createState() => _CityEditButtonWidgetState();
}

class _CityEditButtonWidgetState extends State<CityEditButtonWidget> {
  late CityEditButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CityEditButtonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: FlutterFlowIconButton(
        borderColor: Colors.transparent,
        borderRadius: 8.0,
        borderWidth: 1.0,
        buttonSize: 40.0,
        fillColor: Colors.transparent,
        icon: Icon(
          Icons.edit,
          color: FlutterFlowTheme.of(context).primary,
          size: 20.0,
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
                child: EditCityBottomSheetWidget(
                  cityDocRef: widget!.cityDocRef!,
                  currentName: widget!.currentName!,
                ),
              );
            },
          ).then((value) => safeSetState(() {}));
        },
      ),
    );
  }
}
