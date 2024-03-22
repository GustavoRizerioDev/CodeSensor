#include "DHT.h"
#define dht_type DHT11

int dht_pin = A2; 
DHT dht_1 = DHT(dht_pin, dht_type);

int pinoSensor = A0;
int valorLido = 0;
int linha = 0;
float temperatura = 0;

void setup() {
  Serial.begin(9600);
  dht_1.begin();
  Serial.println("CLEARDATA");
  Serial.println("LABEL, Hora, Temperatura, linha");
}

void loop() {
  valorLido = analogRead(pinoSensor);
  temperatura = (valorLido * 0.00488);
  temperatura = temperatura * (5);

  float umidade = dht_1.readHumidity();
  if(isnan(temperatura) or isnan(umidade)){
    Serial.println("Erro ao ler"); 
  } else {
      
      umidade = umidade * 1.76;
      
    Serial.print(umidade);
    Serial.print(" , ");
    Serial.println(temperatura);
  };
  
  
  delay(500);
}
