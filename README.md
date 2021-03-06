### Force Elements ###

![LOGO!](https://raw.github.com/ForceUniverse/dart-force/master/resources/dart_force_logo.jpg)

Extension of the Dart Force Framework.

These are the polymer elements for Force, use these elements to create awesome realtime applications!

#### Walkthrough ####

First of all we have ForceClientElement, it will instantiate a ForceClient connection.
```xml
  <force-client url="localhost" port="4040" usePolling="true" heartbeat="600"></force-client>
```  
Force on is another element that will make it possible to listen to a certain socket request, it is the force.on("request", (message, sender) {}); wrapper.
```xml
  <force-on forceClientId="fcid" request="listen" data="{{data}}" profile="{{profile}}"></force-on>
```
This element will expose:

- data that can change on every push from a client or server
- profile that is been attached to your socket connection

Force register will help you register to a cargo collection (file based, mongodb, ... or your own implementation on top of cargo)
```xml
  <force-register forceClientId="fcid" name="todos" collection="{{todos}}" revert="true" limit="10"></force-register>
```
So this will get you a todos collection with 10 results and the last ones that are been added first.
 

You can use ForceElement to access ForceClient instance and to have more functionality tight to Force.

    @CustomTag('chat-app')
    class ChatApp extends ForceElement {

#### TODO ####

- add more polymer elements to assist you with on development
 
### Notes to Contributors ###

#### Fork Dart Force MVC ####

If you'd like to contribute back to the core, you can [fork this repository](https://help.github.com/articles/fork-a-repo) and send us a pull request, when it is ready.

If you are new to Git or GitHub, please read [this guide](https://help.github.com/) first.

#### Dart Force ####

Realtime web framework for dart that uses force MVC & wired [source code](https://github.com/ForceUniverse/dart-force)

#### Twitter ####

Follow us on twitter https://twitter.com/usethedartforce

#### Google+ ####

Follow us on [google+](https://plus.google.com/111406188246677273707)

#### Join our discussion group ####

[Google group](https://groups.google.com/forum/#!forum/dart-force)

