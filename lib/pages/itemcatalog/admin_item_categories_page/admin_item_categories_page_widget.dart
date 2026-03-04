import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/itemcatalog/add_category_sheet/add_category_sheet_widget.dart';
import '/pages/itemcatalog/item_category/item_category_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'admin_item_categories_page_model.dart';
export 'admin_item_categories_page_model.dart';

class AdminItemCategoriesPageWidget extends StatefulWidget {
  const AdminItemCategoriesPageWidget({super.key});

  static String routeName = 'AdminItemCategoriesPage';
  static String routePath = '/adminItemCategoriesPage';

  @override
  State<AdminItemCategoriesPageWidget> createState() =>
      _AdminItemCategoriesPageWidgetState();
}

class _AdminItemCategoriesPageWidgetState
    extends State<AdminItemCategoriesPageWidget> {
  late AdminItemCategoriesPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminItemCategoriesPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF6F6F6),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: true,
          leading: Align(
            alignment: AlignmentDirectional(1.0, 0.0),
            child: FlutterFlowIconButton(
              borderRadius: 8.0,
              buttonSize: 54.12,
              fillColor: FlutterFlowTheme.of(context).primary,
              icon: Icon(
                Icons.arrow_back,
                color: FlutterFlowTheme.of(context).info,
                size: 24.0,
              ),
              onPressed: () async {
                context.safePop();
              },
            ),
          ),
          title: Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Text(
              'إدارة الاصناف',
              textAlign: TextAlign.end,
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    font: GoogleFonts.readexPro(
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    fontSize: 22.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
            ),
          ),
          actions: [
            FlutterFlowIconButton(
              borderRadius: 8.0,
              buttonSize: 65.69,
              fillColor: FlutterFlowTheme.of(context).primary,
              icon: Icon(
                Icons.add_sharp,
                color: FlutterFlowTheme.of(context).info,
                size: 35.0,
              ),
              onPressed: () async {
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  enableDrag: false,
                  useSafeArea: true,
                  context: context,
                  builder: (context) {
                    return GestureDetector(
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      child: Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: AddCategorySheetWidget(),
                      ),
                    );
                  },
                ).then((value) => safeSetState(() {}));
              },
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(3.0),
            child: Container(),
          ),
          centerTitle: true,
          toolbarHeight: 80.0,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SafeArea(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFF6F6F6),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 5.0),
                      child: StreamBuilder<List<ItemCatalogRecord>>(
                        stream: queryItemCatalogRecord(
                          queryBuilder: (itemCatalogRecord) => itemCatalogRecord
                              .orderBy('createdAt', descending: true),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 40.0,
                                height: 40.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<ItemCatalogRecord>
                              listViewItemCatalogRecordList = snapshot.data!;

                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewItemCatalogRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewItemCatalogRecord =
                                  listViewItemCatalogRecordList[listViewIndex];
                              return ItemCategoryWidget(
                                key: Key(
                                    'Keycif_${listViewIndex}_of_${listViewItemCatalogRecordList.length}'),
                                categoryName: listViewItemCatalogRecord.name,
                                isActive: listViewItemCatalogRecord.isActive,
                                categoryDocRef:
                                    listViewItemCatalogRecord.reference,
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
