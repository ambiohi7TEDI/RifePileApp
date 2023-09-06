import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sett_model.dart';
export 'sett_model.dart';

class SettWidget extends StatefulWidget {
  const SettWidget({Key? key}) : super(key: key);

  @override
  _SettWidgetState createState() => _SettWidgetState();
}

class _SettWidgetState extends State<SettWidget> {
  late SettModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          buttonSize: 46.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 24.0,
          ),
          onPressed: () async {
            context.pushNamed('Profile');
          },
        ),
        title: Text(
          'Settings Page',
          style: FlutterFlowTheme.of(context).headlineSmall,
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed('EditPro');
            },
            child: ListTile(
              title: Text(
                'Edit Profile',
                style: FlutterFlowTheme.of(context).titleLarge,
              ),
              subtitle: Text(
                'Change What you see on your profile page',
                style: FlutterFlowTheme.of(context).labelMedium,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 20.0,
              ),
              tileColor: FlutterFlowTheme.of(context).secondaryBackground,
              dense: false,
            ),
          ),
          ListTile(
            title: Text(
              'Location Settings',
              style: FlutterFlowTheme.of(context).titleLarge,
            ),
            subtitle: Text(
              'Set Your Location',
              style: FlutterFlowTheme.of(context).labelMedium,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 20.0,
            ),
            tileColor: FlutterFlowTheme.of(context).secondaryBackground,
            dense: false,
          ),
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed('selectOne');
            },
            child: ListTile(
              title: Text(
                'Language',
                style: FlutterFlowTheme.of(context).titleLarge,
              ),
              subtitle: Text(
                'English',
                style: FlutterFlowTheme.of(context).labelMedium,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 20.0,
              ),
              tileColor: FlutterFlowTheme.of(context).secondaryBackground,
              dense: false,
            ),
          ),
          ListTile(
            title: Text(
              'Legal Information',
              style: FlutterFlowTheme.of(context).titleLarge,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 20.0,
            ),
            tileColor: FlutterFlowTheme.of(context).secondaryBackground,
            dense: false,
          ),
          ListTile(
            title: Text(
              'Privacy Policy',
              style: FlutterFlowTheme.of(context).titleLarge,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 20.0,
            ),
            tileColor: FlutterFlowTheme.of(context).secondaryBackground,
            dense: false,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
            child: SwitchListTile.adaptive(
              value: _model.switchListTileValue1 ??= true,
              onChanged: (newValue) async {
                setState(() => _model.switchListTileValue1 = newValue!);
              },
              title: Text(
                'Push Notifications',
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'Readex Pro',
                      lineHeight: 2.0,
                    ),
              ),
              subtitle: Text(
                'Receive Push notifications from our application on a semi regular basis.',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Color(0xFF8B97A2),
                    ),
              ),
              tileColor: FlutterFlowTheme.of(context).secondaryBackground,
              activeColor: FlutterFlowTheme.of(context).primary,
              activeTrackColor: FlutterFlowTheme.of(context).accent1,
              dense: false,
              controlAffinity: ListTileControlAffinity.trailing,
              contentPadding:
                  EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
            ),
          ),
          SwitchListTile.adaptive(
            value: _model.switchListTileValue2 ??= true,
            onChanged: (newValue) async {
              setState(() => _model.switchListTileValue2 = newValue!);
            },
            title: Text(
              'Email Notifications',
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Readex Pro',
                    lineHeight: 2.0,
                  ),
            ),
            subtitle: Text(
              'Receive email notifications from our marketing team about new features.',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    color: Color(0xFF8B97A2),
                  ),
            ),
            tileColor: FlutterFlowTheme.of(context).secondaryBackground,
            activeColor: FlutterFlowTheme.of(context).primary,
            activeTrackColor: FlutterFlowTheme.of(context).accent1,
            dense: false,
            controlAffinity: ListTileControlAffinity.trailing,
            contentPadding:
                EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
          ),
          SwitchListTile.adaptive(
            value: _model.switchListTileValue3 ??= true,
            onChanged: (newValue) async {
              setState(() => _model.switchListTileValue3 = newValue!);
            },
            title: Text(
              'Location Services',
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Readex Pro',
                    lineHeight: 2.0,
                  ),
            ),
            subtitle: Text(
              'Allow us to track your location, this helps keep track of spending and keeps you safe.',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    color: Color(0xFF8B97A2),
                  ),
            ),
            tileColor: FlutterFlowTheme.of(context).secondaryBackground,
            activeColor: FlutterFlowTheme.of(context).primary,
            activeTrackColor: FlutterFlowTheme.of(context).accent1,
            dense: false,
            controlAffinity: ListTileControlAffinity.trailing,
            contentPadding:
                EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
          ),
          SwitchListTile.adaptive(
            value: _model.switchListTileValue4 ??= true,
            onChanged: (newValue) async {
              setState(() => _model.switchListTileValue4 = newValue!);
            },
            title: Text(
              'Dark Mode',
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Readex Pro',
                    lineHeight: 2.0,
                  ),
            ),
            subtitle: Text(
              'Dark Color Theme',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    color: Color(0xFF8B97A2),
                  ),
            ),
            tileColor: FlutterFlowTheme.of(context).secondaryBackground,
            activeColor: FlutterFlowTheme.of(context).primary,
            activeTrackColor: FlutterFlowTheme.of(context).accent1,
            dense: false,
            controlAffinity: ListTileControlAffinity.trailing,
            contentPadding:
                EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
          ),
          SwitchListTile.adaptive(
            value: _model.switchListTileValue5 ??= true,
            onChanged: (newValue) async {
              setState(() => _model.switchListTileValue5 = newValue!);
            },
            title: Text(
              'Automatic Purchase',
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Readex Pro',
                    lineHeight: 2.0,
                  ),
            ),
            subtitle: Text(
              'Buy goods immediately with function card that has been previously saved',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    color: Color(0xFF8B97A2),
                  ),
            ),
            tileColor: FlutterFlowTheme.of(context).secondaryBackground,
            activeColor: FlutterFlowTheme.of(context).primary,
            activeTrackColor: FlutterFlowTheme.of(context).accent1,
            dense: false,
            controlAffinity: ListTileControlAffinity.trailing,
            contentPadding:
                EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
          ),
        ],
      ),
    );
  }
}
