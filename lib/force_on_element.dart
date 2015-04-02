/// Dart API for the polymer element `force-register`.
library force_elements.force_on_dart;

import 'dart:html';
import 'package:force/force_browser.dart';
import 'package:polymer/polymer.dart';

import 'package:force_elements/force_client_mixin.dart';

/// Element that will listen to force.on events of Force
///
///     <force-on forceClientId="fcid" request="listen" data="{{data}}" profile="{{profile}}"></force-on>
@CustomTag('force-on')
class ForceOnElement extends ForceElement {
  /**
   * Fired when a forceClient is connected to the server.
   * @event received
   */
  
  factory ForceOnElement() => new Element.tag('force-on');
  ForceOnElement.created() : super.created();
  
  /**
   * The url we need to connect to
   *
   * @attribute request
   * @type string
   * @default 'default'
   */
  @published String request = 'default';
  
  /**
   * viewCollection that is been observable
   *
   * @attribute name
   * @type string
   * @default ''
   */
  @published var data = '';
  
  /**
   * viewCollection that is been observable
   *
   * @attribute name
   * @type string
   * @default ''
   */
  @published var profile = '';
  
  @published String forceClientId;
    
  requestChanged() {
    print("request changed!");
    this.connected();
  }  
  
  void connected() {
    print("register on ... $request");
    forceClient.on(request, (MessagePackage fme, Sender sender) {
      data = fme.json;
      profile = fme.profile;
      
      this.asyncFire("received", detail: data);
    });
    //this.asyncFire('registered');
  }
}