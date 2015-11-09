# Matematikens domänspecifika språk
[DAT325](https://student.portal.chalmers.se/sv/chalmersstudier/programinformation/Sidor/SokProgramutbudet.aspx?course_id=24179&parsergrp=2) / [DIT982](http://kursplaner.gu.se/english/DIT982.pdf)

En presentation (7 minuter!) for TM3 (måndag 2015-11-16 ca 11:45 av
Patrik Jansson) av den valfria kursen "Matematikens domänspecifika
språk".

Jag heter Patrik Jansson och jag är forskare och lärare i funktionell
programmering-gruppen på avdelningen för programvaruteknik. Jag är här
som examinatro för DSLsofMath men kursansvarig lärare är min kollega
Cezar Ionescu, docent i "Data Science" i Oxford. Jag har själv en
bakgrund (1994) på TM-inriktningen som var en föregångare till dagens
TM-program.

Kursens grundidé är att presentera klassiska matematiska ämnen från
ett datavetenskapligt perspektiv:

* att tydligt beskriva de begrepp som introduceras,
* vara uppmärksam på syntax och typer,
* att bygga domänspecifika språk for vissa matematiska områden: linjär algebra, lite kategoriteori, polynom och potensserier, komplexa tal

Kursen är tänkt att ge en fördjupad matematisk förståelse för
datastudenter och en fördjupad datavetenskaplig förståelse för
matematikstudenter.

## Aktiva studier

Under hela läsperioden alternerar kursen mellan föreläsningar och
övningar + grupparbete.  Vi trycker på att matematik (och antagligen i
princip alla ämnen) kräver aktiva studier - det räcker inte att bara
"läsa (eller lyssna) och hålla med" utan varje student måste aktivt
arbeta med materialet för att tränga in i det ordentligt. Vi vill
betona att ni som TM-studenter är mycket väl rustade för att lära er
datavetenskap i allmänhet och funktionell programmering i synnerhet:
matematisk problemlösning och logik är bra nära samma sak som
programmering och datavetenskap.

Problemlösning med dator innebär alltid ett behov av att "plocka isär"
och verkligen reda ut vad olika begrepp egentligen betyder och när man
gör det i form av källkod kan datorn ge direkt återkoppling när något
inte stämmer. Ni som studenter på kursen kommer att lära er att
beskriva kända och nya matematisk domäner med källkod på ungefär samma
sätt som ni skulle ta itu med vilken annan domän som ni fått i uppgift
att modellera.

## Funktionell programmering (FP) och typer

FP bygger på att modellera med hjälp av typer och rena funktioner och det
passar mycket bra när det handlar om matematik som kretsar kring
funktioner och där variabler inte ändras. Dessutom har FP redan från
början varit kopplat till matematiska bevis och språket ML utvecklades
egentligen på 70-talet som ett språk för att beskriva bevis och
algoritmer för att hitta bevis.

Undervisningsspråket är engelska och implementationsspråket är Haskell.

```haskell
sq :: Double -> Double
sq(x) = x^2

twice :: (Double -> Double) -> (Double -> Double)
twice f = \x -> f(f(x))

quad :: Double -> Double
quad = twice sq

test :: Double
test = quad 3

list :: [Double -> Double]
list = [(1+), (2*), sq, quad]
```







----------------

Kurser att välja mellan:

DAT325 Matematikens domänspecifika språk  (Patrik Jansson)
MVE150 Algebra                            (Per Salberger)
TDA357 Databaser                          (Niklas Broberg, Aarne Ranta)
TMA372 Partiella differentialekvationer   (Mohammad Asadzadeh)
SSY305 Kommunikationssystem               (Erik Ström)