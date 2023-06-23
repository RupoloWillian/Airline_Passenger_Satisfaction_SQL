### SOBRE OS DADOS

A base de dados presentes no site da [Maven Analytics](https://www.mavenanalytics.io/data-playground?page=2) traz dados relacionados a indíces de satisfação de de mais de 120.000 passageiros de companhias aéreasrelacionados a fatores como limpeza, conforto, serviço e experiência geral, além de informações adicionais sobre cada passageiro, seu voo e tipo de viagem

### SOBRE O PROJETO

O objetivo deste projeto é extrair insights da base de dados sobre os perfil dos clientes e a satisfação dos mesmos utilizando linguagem SQL. Para isso as 5 perguntas abaixo foram respondidas:
**1) Qual é o principal motivo das viagens realizadas?**
**2) Qual é o perfil dos clientes da companhia aérea em relação ao tipo de cliente?**
**3) Qual é o número de passageiros satisfeitos e insatisfeitos pelo tipo de consumidor?**
**4? Qual é o número de passageiros satisfeitos e insatisfeitos em relação ao gênero dos passageiros?**
**5) Qual é a média de satisfação dos serviços oferecidos a bordo (Alimentos e Bebidas, Serviço de Bordo, Serviço de Wi-Fi a Bordo, Entretenimento a Bordo) por classe**
**e tipo de viagem?**
**6) Qual é a média de satisfação em relação as características do avião (Conforto dos Assentos, Conforto das Pernas e Limpeza) por classe e tipo de viagem?**

### INSIGHTS

A partir das análises utilizando SQL os seguintes insights foram obtidos:
* Viagens do tipo "Business" representam o principal motivo das viagens (69,06%)

|Tipo da Viagem | Motivo (%) |
|-------------- | ---------- |
|Negócios       | 69,06      |
|Pessoal        | 30,94      |

* A maior parte dos clientes já viajaram anteriormente (81,69%)

|Tipo de Cliente | Quantidade (%) |
|----------------|----------------|
|Primeira Viagem | 18,31          |
|Retorno         | 81,69          |

* Em ambos os tipos de cliente o percentual "Neutro ou Insatisfeito" é maior

|Tipo de Cliente | Índice                 | Quantidade (%) |
|----------------|------------------------|----------------|
|Primeira Viagem | Satisfeito             | 23,97          |
|Primeira Viagem | Neutro ou Insatisfeito | 76,03          |
|Retorno         | Satisfeito             | 47,81          |
|Retorno         | Neutro ou Insatisfeito | 52,19          |

* Em ambos os gêneros o percentual "Neutro ou Insatisfeito" é maior

|Tipo de Cliente | Índice                 | Quantidade (%) |
|----------------|------------------------|----------------|
|Feminino        | Satisfeito             | 42,90          |
|Feminino        | Neutro ou Insatisfeito | 57,10          |
|Masculino       | Satisfeito             | 44,01          |
|Masculino       | Neutro ou Insatisfeito | 55,99          |

* Média de satisfação dos serviços oferecidos a bordo

|Classe         | Tipo da Viagem | Comida e Bebida | Serviços a Bordo | Serviço de WiFi | Entretenimento a Bordo |
|---------------|----------------|-----------------|------------------|-----------------|------------------------|
|Executiva      | Negócios       | 3,34            | 3,87             | 2,79            | 3,67                   |
|Economica      | Negócios       | 3,12            | 3,27             | 2,88            | 3,15                   |
|Economica Plus | Negócios       | 3,15            | 3,17             | 2,98            | 3,18                   |
|Executiva      | Pessoal        | 3,11            | 3,33             | 2,55            | 3,01                   |
|Economica      | Pessoal        | 3,06            | 3,62             | 2,52            | 3,06                   |
|Economica Plus | Pessoal        | 3,07            | 3,62             | 2,51            | 3,05                   |

* Média de satisfação em relação as características do avião

|Classe         | Tipo da Viagem | Conforto dos Assentos | Conforto das Pernas | Serviço de WiFi | 
|---------------|----------------|-----------------------|---------------------|-----------------|
|Executiva      | Negócios       | 3,78                  | 3,68                | 3,49            |
|Economica      | Negócios       | 3,11                  | 3,07                | 3,09            |
|Economica Plus | Negócios       | 3,15                  | 3,03                | 3,12            | 
|Executiva      | Pessoal        | 3,48                  | 2,86                | 3,21            |
|Economica      | Pessoal        | 3,17                  | 3,09                | 3,11            |
|Economica Plus | Pessoal        | 3,19                  | 3,08                | 3,12            |
