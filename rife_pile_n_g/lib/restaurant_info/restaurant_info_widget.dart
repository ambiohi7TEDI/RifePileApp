import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_static_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapbox_search/mapbox_search.dart';
import 'package:provider/provider.dart';
import 'restaurant_info_model.dart';
export 'restaurant_info_model.dart';

class RestaurantInfoWidget extends StatefulWidget {
  const RestaurantInfoWidget({
    Key? key,
    required this.restaurantRef,
  }) : super(key: key);

  final DocumentReference? restaurantRef;

  @override
  _RestaurantInfoWidgetState createState() => _RestaurantInfoWidgetState();
}

class _RestaurantInfoWidgetState extends State<RestaurantInfoWidget> {
  late RestaurantInfoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RestaurantInfoModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<RestaurantsRecord>(
      stream: RestaurantsRecord.getDocument(widget.restaurantRef!),
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
        final restaurantInfoRestaurantsRecord = snapshot.data!;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              title: Text(
                'Restaurant Info',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: FlutterFlowStaticMap(
                      location: restaurantInfoRestaurantsRecord.location!,
                      apiKey:
                          'pk.eyJ1IjoiYmxlc3NlZGluZyIsImEiOiJjbGxrMzAwZXcxOXFmM3BwcXpxZjhjZjVkIn0._1HZ9j6cForGp2hX6ez5pg',
                      style: MapBoxStyle.Light,
                      width: double.infinity,
                      height: 300.0,
                      fit: BoxFit.cover,
                      borderRadius: BorderRadius.circular(100.0),
                      markerColor: Color(0xFFE70707),
                      zoom: 12,
                      tilt: 0,
                      rotation: 0,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              150.0, 0.0, 100.0, 0.0),
                          child: Text(
                            restaurantInfoRestaurantsRecord.name,
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              150.0, 0.0, 100.0, 0.0),
                          child: Text(
                            restaurantInfoRestaurantsRecord.address,
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            150.0, 0.0, 100.0, 10.0),
                        child: Text(
                          'Open until ${dateTimeFormat('jm', restaurantInfoRestaurantsRecord.close)}',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            150.0, 0.0, 100.0, 0.0),
                        child: StreamBuilder<List<ReviewsRecord>>(
                          stream: queryReviewsRecord(
                            parent: widget.restaurantRef,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<ReviewsRecord> textReviewsRecordList =
                                snapshot.data!;
                            return Text(
                              '(⭐${functions.getAverageRating(textReviewsRecordList.map((e) => e.rating).toList()).toString()})${textReviewsRecordList.length.toString()}reviews',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              150.0, 10.0, 100.0, 100.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.safePop();
                            },
                            text: 'Go Back',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ],
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
