import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/trips/trip_action_sheet/trip_action_sheet_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'statuscomponent_model.dart';
export 'statuscomponent_model.dart';

class StatuscomponentWidget extends StatefulWidget {
  const StatuscomponentWidget({
    super.key,
    required this.parameter1,
    required this.parameter2,
  });

  final String? parameter1;
  final DocumentReference? parameter2;

  @override
  State<StatuscomponentWidget> createState() => _StatuscomponentWidgetState();
}

class _StatuscomponentWidgetState extends State<StatuscomponentWidget> {
  late StatuscomponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatuscomponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(12.0, 6.0, 12.0, 6.0),
      child: InkWell(
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
                child: TripActionSheetWidget(
                  tripRef: widget!.parameter2!,
                  currentStatus: widget!.parameter1!,
                ),
              );
            },
          ).then((value) => safeSetState(() {}));
        },
        child: Container(
          decoration: BoxDecoration(
            color: () {
              if (widget!.parameter1 == 'open') {
                return FlutterFlowTheme.of(context).success;
              } else if (widget!.parameter1 == 'closed') {
                return FlutterFlowTheme.of(context).error;
              } else if (widget!.parameter1 == 'dispatched') {
                return FlutterFlowTheme.of(context).tertiary;
              } else {
                return FlutterFlowTheme.of(context).primary;
              }
            }(),
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                () {
                  if (widget!.parameter1 == 'open') {
                    return 'مفتوحة';
                  } else if (widget!.parameter1 == 'closed') {
                    return 'مغلقة';
                  } else if (widget!.parameter1 == 'dispatched') {
                    return 'تم الارسال';
                  } else if (widget!.parameter1 == 'completed') {
                    return 'اكتملت';
                  } else {
                    return '';
                  }
                }(),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).labelSmall.override(
                      font: GoogleFonts.readexPro(
                        fontWeight:
                            FlutterFlowTheme.of(context).labelSmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelSmall.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).info,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).labelSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelSmall.fontStyle,
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
