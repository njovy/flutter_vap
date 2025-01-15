import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class VapViewForAndroid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> creationParams = <String, dynamic>{};
    return AndroidView(
      viewType: "flutter_vap",
      layoutDirection: TextDirection.ltr,
      creationParams: creationParams,
      creationParamsCodec: StandardMessageCodec(),
    );

    // return PlatformViewLink(
    //   viewType: 'flutter_vap',
    //   surfaceFactory: (context, controller) => AndroidViewSurface(
    //     controller: controller as AndroidViewController,
    //   ),
    //   onCreatePlatformView: (params) {
    //     final usingView =  PlatformViewsService.initAndroidView;
    //
    //     final rawCreationParameters = creationParams.map;
    //
    //
    //
    //     final view = usingView.call(
    //         id: params.id,
    //         viewType: 'flutter_vap',
    //         layoutDirection: TextDirection.ltr,
    //         creationParams: creationParams,
    //         creationParamsCodec: StandardMessageCodec(),
    //         onFocus: () => params.onFocusChanged(true));
    //
    //     view.addOnPlatformViewCreatedListener((id) {
    //       params.onPlatformViewCreated(id);
    //       // onPlatformViewCreated(id);
    //     });
    //
    //     return view..create();
    //   },
    // );
  }
}
