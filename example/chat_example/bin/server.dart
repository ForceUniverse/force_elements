library aproducthuntdart;

import 'package:force/force_serverside.dart';

main() {
  // You can also use a memory implementation here, just switch the CargoMode to MEMORY

  // Create a force server
  ForceServer fs = new ForceServer(port: 4040, 
                                 clientFiles: '../build/web/');
    
  // Setup logger
  fs.setupConsoleLog();
  
  // wait until our forceserver is been started and our connection with the persistent layer is done!
  fs.start().then((_) { 
      // Tell Force what the start page is!
      fs.server.static("/", "index.html");
      
      fs.on("add", (message, sender) => fs.send("update", message.json));
    
    });
}

