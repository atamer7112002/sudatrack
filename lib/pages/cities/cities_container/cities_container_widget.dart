import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/cities/city_edit_button/city_edit_button_widget.dart';
import '/pages/cities/edit_city_bottom_sheet/edit_city_bottom_sheet_widget.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cities_container_model.dart';
export 'cities_container_model.dart';

class CitiesContainerWidget extends StatefulWidget {
  const CitiesContainerWidget({
    super.key,
    required this.cityName,
    required this.isActive,
    required this.cityDocRef,
  });

  final String? cityName;
  final bool? isActive;
  final DocumentReference? cityDocRef;

  @override
  State<CitiesContainerWidget> createState() => _CitiesContainerWidgetState();
}

class _CitiesContainerWidgetState extends State<CitiesContainerWidget> {
  late CitiesContainerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CitiesContainerModel());

    _model.switchValue = widget!.isActive!;
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
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x33000000),
                offset: Offset(
                  0.0,
                  2.0,
                ),
                spreadRadius: 0.0,
              )
            ],
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
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
                            currentName: widget!.cityName!,
                          ),
                        );
                      },
                    ).then((value) => safeSetState(() {}));
                  },
                  child: wrapWithModel(
                    model: _model.cityEditButtonModel,
                    updateCallback: () => safeSetState(() {}),
                    child: CityEditButtonWidget(
                      currentName: widget!.cityName!,
                      cityDocRef: widget!.cityDocRef!,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget!.cityName,
                          'مدينة تجريبية ',
                        ),
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  font: GoogleFonts.readexPro(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                      ),
                    ].divide(SizedBox(height: 4.0)),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 12.0, 8.0, 12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Switch.adaptive(
                          value: _model.switchValue!,
                          onChanged: (newValue) async {
                            safeSetState(() => _model.switchValue = newValue!);
                            if (newValue!) {
                              await widget!.cityDocRef!
                                  .update(createCitiesRecordData(
                                isActive: true,
                              ));
                            } else {
                              await widget!.cityDocRef!
                                  .update(createCitiesRecordData(
                                isActive: false,
                              ));
                            }
                          },
                          activeColor: FlutterFlowTheme.of(context).primary,
                          activeTrackColor: Color(0xFFC2D4E9),
                          inactiveTrackColor: Color(0xFF9CA3AF),
                          inactiveThumbColor: Color(0xFFE5E7EB),
                        ),
                      ],
                    ),
                  ),
                ),
              ].divide(SizedBox(width: 12.0)),
            ),
          ),
        ),
      ),
    );
  }
}
