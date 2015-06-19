// http://learning.codasign.com/index.php?title=Sending_and_Receiving_OSC_Data_Using_Processing

// Now, we need to create two objects, 
// one for sending OSC messages and another to store a network address (where we will be sending our data to). 
// Add these just below the oscP5 headers:
OscP5 oscP5;
NetAddress myRemoteLocation;
// create an osc message
//OscMessage myMessage = new OscMessage("/test");
//
//myMessage.add(123); // add an int to the osc message
//myMessage.add(12.34); // add a float to the osc message 
//myMessage.add("some text!"); // add a string to the osc message
//
//// send the message
//oscP5.send(myMessage, myRemoteLocation); 

