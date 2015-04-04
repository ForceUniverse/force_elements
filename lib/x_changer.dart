import 'package:polymer/polymer.dart';

/**
 * A Polymer x-changer element.
 */
@CustomTag('x-changer')

class XChanger extends PolymerElement {

  @published String prop;
  
  propChanged() {
    print("prop changed!");
  }
  
  /// Constructor used to create instance of XChanger.
  XChanger.created() : super.created() {
  }

  /*
   * Optional lifecycle methods - uncomment if needed.
   *

  /// Called when an instance of x-changer is inserted into the DOM.
  attached() {
    super.attached();
  }

  /// Called when an instance of x-changer is removed from the DOM.
  detached() {
    super.detached();
  }

  /// Called when an attribute (such as  a class) of an instance of
  /// x-changer is added, changed, or removed.
  attributeChanged(String name, String oldValue, String newValue) {
  }

  /// Called when x-changer has been fully prepared (Shadow DOM created,
  /// property observers set up, event listeners attached).
  ready() {
  }
   
  */
  
}
