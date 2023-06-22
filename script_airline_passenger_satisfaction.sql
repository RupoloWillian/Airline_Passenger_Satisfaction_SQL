CREATE TABLE airline.passenger(
    Id varchar(6),
    Gender varchar(6),
    Age int,
    Customer_Type varchar(15),
    Type_Travel varchar(15),
    Class varchar(15),
    Flight_Distance int,
    Departure_Delay int,
    Arrival_Delay int,
    Departure_Arrival_Time int,
    Online_Booking int,
    Check_in_Service int,
    Online_Boarding int,
    Gate_Location int,
    On_board_Service int,
    Seat_Comfort int,
    Leg_Room int,
    Cleanliness int,
    Food_Drink int,
    In_flight_Service int,
    In_flight_Wifi int,
    In_flight_Entertainment int,
    Baggage_Handling int,
    Satisfaction varchar(30)
)

/*      Perguntas       */

/*1) Qual é o principal motivo das viagens realizadas?*/

SELECT Type_Travel AS Tipo_Viagem, 
	ROUND(COUNT(Id)/(SELECT COUNT(*) FROM airline.passenger)*100,2) AS Motivo_Percentual
FROM airline.passenger
GROUP BY Tipo_Viagem;

/*2) Qual é o perfil dos clientes da companhia aérea em relação ao tipo de cliente*/

SELECT Customer_Type AS Tipo_Cliente, 
	ROUND(COUNT(Id)/(SELECT COUNT(*) FROM airline.passenger)*100,2) AS Percentual
FROM airline.passenger
GROUP BY Tipo_Cliente;

/*3) Qual é o número de passageiros satisfeitos e insatisfeitos pelo tipo de consumidor?*/

SELECT 
	Customer_Type AS Tipo_Cliente,
    COUNT(id) AS Quantidade,
    ROUND(SUM(CASE WHEN Satisfaction = 'Satisfied' THEN 1 ELSE 0 END)/ SUM(COUNT(*)) OVER(PARTITION BY Customer_Type) * 100 , 2) AS Satisfeito,
	ROUND(SUM(CASE WHEN Satisfaction = 'Neutral or Dissatisfied' THEN 1 ELSE 0 END)/ SUM(COUNT(*)) OVER(PARTITION BY Customer_Type) * 100, 2) AS Neutro_Insatisfeito
FROM airline.passenger
GROUP BY Tipo_Cliente;

/*4) Qual é o número de passageiros satisfeitos e insatisfeitos pela idade e gênero dos passageiros? 
DIVIDIR ESSA QUERY EM DUAS PARTES (POR IDADE E POR GÊNERO) PARA FACILITAR A VISUALIZAÇÃO*/

SELECT Gender AS Genero, Satisfaction AS Satisfacao,
	COUNT(Satisfaction) AS Quantidade,
	ROUND(SUM(CASE WHEN Satisfaction = 'Satisfied' THEN 1 ELSE 0 END)/ SUM(COUNT(*)) OVER(PARTITION BY Gender) * 100 , 2) AS Satisfeito,
	ROUND(SUM(CASE WHEN Satisfaction = 'Neutral or Dissatisfied' THEN 1 ELSE 0 END)/ SUM(COUNT(*)) OVER(PARTITION BY Gender) * 100, 2) AS Neutro_Insatisfeito
FROM airline.passenger
GROUP BY Genero
ORDER BY Genero;

/*5) Qual é a média de satisfação dos serviços oferecidos a bordo (Food and Drink, In-flight Service, In-flight Wifi Service, In-flight Entertainment) por classe
e tipo de viagem?*/
SELECT Class AS Classe, Type_Travel AS Tipo_Viagem,
	ROUND(AVG(Food_Drink),2) AS Comida_Bebida, 
	ROUND(AVG(In_flight_Service),2) AS Servicos_Bordo,
    ROUND(AVG(In_flight_Wifi),2) AS Servico_WiFi,
    ROUND(AVG(In_flight_Entertainment),2) AS Entretenimento_Bordo
FROM airline.passenger
GROUP BY Tipo_Viagem, Classe
ORDER BY Tipo_Viagem;

/*6) Qual é a média de satisfação em relação as características do avião (Seat Comfort, Leg Room Service, Cleanliness) por classe e tipo de viagem?*/
SELECT Class AS Classe, Type_Travel AS Tipo_Viagem,
	ROUND(AVG(Seat_Comfort),2) AS Conforto_Assentos, 
	ROUND(AVG(Leg_Room),2) AS Conforto_Pernas,
    ROUND(AVG(Cleanliness),2) AS Limpeza
FROM airline.passenger
GROUP BY Tipo_Viagem, Classe
ORDER BY Tipo_Viagem;