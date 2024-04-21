/*
  Control_LED_by_Potentiometer
  
  modified 2021/6/30
  by http://www.freenove.com
*/

int adcValue;     // Define a variable to save the ADC value
float voltage;    // Define a variable to save the calculated voltage value

int ledPin = 6;   // Use D9 on Freenove UNO to control the LED

void setup() {
  Serial.begin(9600);      // Initialize the serial port and set the baud rate to 9600
  pinMode(ledPin, OUTPUT);             // Initialize the LED pin as an output
}

void loop() {
  adcValue = analogRead(A1);          // Convert the analog of A0 port to digital
  voltage = adcValue * (5.0 / 1023.0);// Calculate voltage according to digital
  
  Serial.print("adcValue: ");
  Serial.println(adcValue);
  Serial.print("voltage: ");
  Serial.println(voltage);
  
  // Map analog to the 0-255 range, and works as PWM duty cycle of ledPin port
  analogWrite(ledPin, map(adcValue, 0, 1023, 0, 255));
}
