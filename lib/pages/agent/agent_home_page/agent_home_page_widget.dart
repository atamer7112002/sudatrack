import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/agent/agent_tile/agent_tile_widget.dart';
import '/pages/agent/agent_trip_tile/agent_trip_tile_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'agent_home_page_model.dart';
export 'agent_home_page_model.dart';

class AgentHomePageWidget extends StatefulWidget {
  const AgentHomePageWidget({super.key});

  static String routeName = 'AgentHomePage';
  static String routePath = '/agentHomePage';

  @override
  State<AgentHomePageWidget> createState() => _AgentHomePageWidgetState();
}

class _AgentHomePageWidgetState extends State<AgentHomePageWidget> {
  late AgentHomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AgentHomePageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<TripsRecord>>(
      stream: queryTripsRecord(
        queryBuilder: (tripsRecord) => tripsRecord
            .where(
              'status',
              isEqualTo: 'open',
            )
            .orderBy('createdAt', descending: true),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<TripsRecord> agentHomePageTripsRecordList = snapshot.data!;
        final agentHomePageTripsRecord = agentHomePageTripsRecordList.isNotEmpty
            ? agentHomePageTripsRecordList.first
            : null;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(80.0),
              child: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primary,
                automaticallyImplyLeading: false,
                leading: FlutterFlowIconButton(
                  borderRadius: 8.0,
                  buttonSize: 40.0,
                  fillColor: FlutterFlowTheme.of(context).primary,
                  icon: Icon(
                    Icons.login_sharp,
                    color: FlutterFlowTheme.of(context).info,
                    size: 32.0,
                  ),
                  onPressed: () async {
                    context.goNamed(LoginPageWidget.routeName);
                  },
                ),
                title: Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Text(
                    'صفحة المندوب',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          font: GoogleFonts.readexPro(
                            fontWeight: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .fontStyle,
                          ),
                          color: Colors.white,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .fontStyle,
                        ),
                  ),
                ),
                actions: [],
                centerTitle: false,
                toolbarHeight: 80.0,
                elevation: 2.0,
              ),
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 15.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(AgentShipmentsPageWidget.routeName);
                      },
                      child: wrapWithModel(
                        model: _model.agentTileModel,
                        updateCallback: () => safeSetState(() {}),
                        child: AgentTileWidget(),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(AgentTripsPageWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.agentTripTileModel,
                      updateCallback: () => safeSetState(() {}),
                      child: AgentTripTileWidget(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
