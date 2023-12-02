/*
 Basic ESP8266 MQTT example
 This sketch demonstrates the capabilities of the pubsub library in combination
 with the ESP8266 board/library.
 It connects to an MQTT server then:
  - publishes "hello world" to the topic "outTopic" every two seconds
  - subscribes to the topic "inTopic", printing out any messages
    it receives. NB - it assumes the received payloads are strings not binary
  - If the first character of the topic "inTopic" is an 1, switch ON the ESP Led,
    else switch it off
 It will reconnect to the server if the connection is lost using a blocking
 reconnect function. See the 'mqtt_reconnect_nonblocking' example for how to
 achieve the same result without blocking the main loop.
 To install the ESP8266 board, (using Arduino 1.6.4+):
  - Add the following 3rd party board manager under "File -> Preferences -> Additional Boards Manager URLs":
       http://arduino.esp8266.com/stable/package_esp8266com_index.json
  - Open the "Tools -> Board -> Board Manager" and click install for the ESP8266"
  - Select your ESP8266 in "Tools -> Board"
*/

#include <WiFi.h>
#include <PubSubClient.h>
#include <ArduinoJson.h>

#define INTOPIC "ecet230/AHfinal/set_freq"
#define OUTTOPIC "ecet230/AHfinal/ctlr_status"
#define DIVOUT_PIN 0
#define DIVCLK_PIN 1
#define SETDIV_PIN 2
#define HZPIN      3

// Update these with values suitable for your network.

const char* ssid = "All My Homies Hate Rogers";
const char* password = "fuckRogers!123";
const char* mqtt_server = "broker.emqx.io";

WiFiClient espClient;
PubSubClient client(espClient);
unsigned long start = 0;
bool HzPinState;
#define MSG_BUFFER_SIZE	(50)
char msg[MSG_BUFFER_SIZE];
int value = 0;

void setup_wifi() {

  delay(10);
  // We start by connecting to a WiFi network
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  randomSeed(micros());

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
}

void callback(char* topic, byte* payload, unsigned int length) {
  Serial.print("Message arrived [");
  Serial.print(topic);
  Serial.print("] ");
  for (int i = 0; i < length; i++) {
    Serial.print((char)payload[i]);
  }
  Serial.println();
  StaticJsonDocument<200> doc;
  DeserializationError error = deserializeJson(doc, payload);
  if (error)
  {
    Serial.print("ds failed: ");
    Serial.println(error.f_str());
    Serial.println();
  }
  else
  {
    int div = doc["div"];
    Serial.printf("DIVISOR: %i", div);
    Serial.println();
    SetFreq(div);
    client.publish(OUTTOPIC, "successful");
  }
}

void reconnect() {
  // Loop until we're reconnected
  while (!client.connected()) {
    Serial.print("Attempting MQTT connection...");
    // Create a random client ID
    String clientId = "ESP8266Client-";
    clientId += String(random(0xffff), HEX);
    // Attempt to connect
    if (client.connect(clientId.c_str())) {
      Serial.println("connected");
      // Once connected, publish an announcement...
      client.publish(OUTTOPIC, "hello world");
      // ... and resubscribe
      client.subscribe(INTOPIC);
    } else {
      Serial.print("failed, rc=");
      Serial.print(client.state());
      Serial.println(" try again in 5 seconds");
      // Wait 5 seconds before retrying
      delay(5000);
    }
  }
}

void setup() {
  for (int i = 0; i<4; i++)
  {
    pinMode(i, OUTPUT);
    digitalWrite(i, LOW);
  }
  HzPinState = false;
  SetFreq(262);
  pinMode(BUILTIN_LED, OUTPUT);     // Initialize the BUILTIN_LED pin as an output
  Serial.begin(115200);
  setup_wifi();
  client.setServer(mqtt_server, 1883);
  client.setCallback(callback);
}

void loop() {

  if (!client.connected()) {
    reconnect();
  }
  client.loop();

  if (millis() - start > 500) {
    start = millis();
    HzPinState = !HzPinState;
    digitalWrite(HZPIN, HzPinState); // toggle the Hz pin to create a 1Hz pulse;
  }
}


void SetFreq(int divisor)
{
  // shift divisor into fpga shift register
  for (int i = 0; i < 10; i++)
  {
    digitalWrite(DIVOUT_PIN, (divisor>>i & 0x01));
    Serial.println((divisor>>i & 0x01));
    digitalWrite(DIVCLK_PIN, HIGH);
    delay(1);
    digitalWrite(DIVCLK_PIN, LOW);
    delay(1);
  }
  // set freq divider
  digitalWrite(SETDIV_PIN, HIGH);
  delay(1);
  digitalWrite(2, LOW);
  delay(1);
  // publish status update
  client.publish(OUTTOPIC, "Freq Update successful");
}
