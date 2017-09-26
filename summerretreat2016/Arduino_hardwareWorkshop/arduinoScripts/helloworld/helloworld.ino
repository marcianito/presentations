
void setup() {
  // initialize serial communication at 9600 bits per second:
  Serial.begin(9600);
}

// the loop routine runs over and over again forever:
void loop() {
  
  Serial.println("hello world");
  delay(1000);        // delay in between reads for stability
}
