/*
  Control_LED_through_Photoresistor

  modified 2021/6/30
  by http://www.freenove.com
*/

int adcValue; // Define a variable to save the ADC value
float voltage;    // Define a variable to save the calculated voltage value

int ledPin = 6;   // The number of the LED pin

void setup() {
  Serial.begin(9600);      // Initialize the serial port and set the baud rate to 9600
  pinMode(ledPin, OUTPUT);  // Set ledPin into output mode
}

void loop() {
  adcValue = analogRead(A0);  // Read analog voltage value of A0 port, and save
  voltage = adcValue * (5.0 / 1023.0);// Calculate voltage according to digital
  
  Serial.print("adcValue: ");
  Serial.println(adcValue);
  Serial.print("voltage: ");
  Serial.println(voltage);
  
  // Map analog to the 0-255 range, and works as ledPin duty cycle setting
  analogWrite(ledPin, map(adcValue, 0, 1023, 0, 255));
}
