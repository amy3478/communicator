
import processing.serial.*;
Serial port;

void setup() {
  port = new Serial(this, "/dev/cu.SLAB_USBtoUART", 9600);
}

void draw() {
  String onoroff[] = loadStrings("http://amypu.com/communicator/LEDstate.txt");
  print(onoroff[0]);
  
  if (onoroff[0].equals("1") == true) {
    println(" - TELLING ARDUINO TO TURN LED ON");
    port.write('H');
  } else {
    println(" - TELLING ARDUINO TO TURN LED OFF");
    port.write('L');
  }
  
  delay(7000);
}