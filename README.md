# Tehtävän kuvaus

Harjoitustyöni aiheena oli tehdä yksinkertaistettu relaatiotietokanta versio kirjanmerkkien hallintasovelluksesta, jota olen työstänyt harrastusprojektina NoSQL -tekniikoita käyttäen.

## Työn vaiheet

Aloitin tehtävän tekemisen hahmottelemalla paperille kunkin taulun ja sen sisältämät ominaisuudet.

Tämän jälkeen tutustuin ERDPlus-sovellukseen ja aloin laatimaan ER-kaaviota josta taulujen väliset suhteet käyvät ilmi.

![alt text](/er-kaavio.png)

Relaatiokaavion loin suoraan kääntämällä ER-kaaviosta. Tässä kohtaa lisäsin myös rajoitteet ja varmistin primary- ja foreign-avainten oikeellisuuden.

![alt text](/relaatiokaavio.png)

Generoin tietokannan luomiseen vaadittavan skriptin suoraan relaatiokaavion pohjalta.

Seuraavaksi
