#include "DHT.h"
#define dht_type DHT11

int dht_pin = A2; 
DHT dht_1 = DHT(dht_pin, dht_type);
const int min_umidade = 85;
const int max_umidade = 90;

int pinoSensor = A0;
int valorLido = 0;
int linha = 0;
float temperatura = 0;
const int min_temperatura = -4;
const int max_temperatura = 0;


void setup() {
  Serial.begin(9600);
  dht_1.begin();
  Serial.println("CLEARDATA");
  
}

void loop() {
  valorLido = analogRead(pinoSensor);
  temperatura = (valorLido * 0.00488); 
  temperatura = temperatura * (-4);
 
  float umidade = dht_1.readHumidity();
  if(isnan(temperatura) or isnan(umidade)){
    Serial.println("Erro ao ler"); 
  } else {
    String teste = "Umidade:";
    String teste2 = "Temperatura:";
    String min = "Min:";
    String max = "Max:";
    String minUmidade = "Minimo:";
    String maxUmidade = "Maximo:";
      
      umidade = umidade * 1.50;
      
    Serial.print(teste + umidade);
    Serial.print(" , ");
    Serial.print(minUmidade + min_umidade);
    Serial.print(" , ");
    Serial.print(maxUmidade + max_umidade);
    Serial.print(" , ");
      
    Serial.print(teste2 + temperatura); 
    Serial.print(" , ");
    Serial.print(min + min_temperatura);
    Serial.print(" , ");
    Serial.println(max + max_temperatura);  

  };  
  
  
  delay(500);
}
