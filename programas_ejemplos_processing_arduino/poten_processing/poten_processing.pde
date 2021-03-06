import processing.serial.*;
Serial serial;// establecemos una variable llamada serial de Tipo Serial

void setup() {
  size (300, 300);
  serial= new Serial (this, Serial.list()[0], 9600); 
  /* declaramos la variable serial con varias características: con Serial.list ()[0] cogemos el primer elemento de conexión serie, en nuestro caso arduino, y establecemos una conexión a 9600 baudios*/
}

void draw() {
  if (serial.available() >0) {// si llega algún dato
    int valor=serial.read(); //lo leemos y lo asignamos a la variable valor
    background (valor); //cambiamos el fondo de pantalla al valor recibido de arduino
  }
}