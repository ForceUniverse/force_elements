// Copyright (c) 2015, ForceUniverse. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:polymer/polymer.dart';
import '../../../lib/force_element.dart';

import 'dart:html';


class Todos extends Object with Observable {
  final List items = toObservable([]);
  
  void add(message) {
      // Insert the message at the bottom of the current list, or at a given index.
      items.add(toObservable(message));
    }
}

/// A Polymer `<main-app>` element.
@CustomTag('chat-app')
class ChatApp extends ForceElement {
  @published String message = '';
  
  @published ObservableList todos = new ObservableList();
  
  @published String forceClientId;
  
  /// Constructor used to create instance of MainApp.
  ChatApp.created() : super.created() {}
  
  void send() {
    forceClient.send("add", message);
  }
  
  void activate() {
    if (todos != null) {
      print("this is a test!");
    }
  }
  
  void connected() {
    print("connected!");
  }
  
  void received(Event e, var detail, Node target) {
    todos.add(toObservable(detail));
  }

}
