// Biblioteca dht11
#include "DHT.h"
#define dht_type DHT11

// Variaveis DHT11
int dht_pin = A2; 
DHT dht_1 = DHT(dht_pin, dht_type);

// Variaveis LM35
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
  temperatura = (valorLido * 0.00488); //Essa linha vai fazer o Calculo de 5V - 1024 bits.
  temperatura = temperatura * (5);
    // linha++;
    // Serial.print("DATA, TIME, ");
    // Serial.println(temperatura);
    // Serial.print(",");
    // Serial.println(linha);

  float umidade = dht_1.readHumidity();
  if(isnan(temperatura) or isnan(umidade)){
    Serial.println("Erro ao ler"); 
  } else {
      //Serial.print("Umidade: ");
      umidade = umidade * 1.75;
      
    Serial.print(umidade);
    Serial.print(" , ");
      //Serial.print(" Temperatura: ");
    Serial.println(temperatura);
      //Serial.println(" ºC");
  };  //para mostrar os valores no gráfico, deve-se printar somente numeros (por isso as strings estao comentadas)
  
  
  delay(500);
}
