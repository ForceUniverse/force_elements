/// Dart API for the abstract force polymer element that depends on ForceClientElement
library force_elements.force_element;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:force/force_browser.dart';

import 'package:force_elements/force_client_element.dart';

abstract class ForceElement extends PolymerElement {
@observable ForceClientElement fcElement;

@published String forceClientId;

ForceElement.created() : super.created();

void forceClientIdChanged() {
      fcElement = document.querySelector('#$forceClientId');
      if (fcElement == null) return;
      if (fcElement.loaded) {
        connected();
      } else {
        fcElement.on['force-client-connected'].take(1).listen((_) => connected());
      }
}

void connected() {}

ForceClient get forceClient => fcElement.forceClient;
}