# Tehtävän kuvaus

Harjoitustyöni aiheena oli tehdä yksinkertaistettu relaatiotietokanta versio kirjanmerkkien hallintasovelluksesta, jota olen työstänyt harrastusprojektina NoSQL -tekniikoita käyttäen.

## Työn vaiheet

Aloitin tehtävän tekemisen hahmottelemalla paperille kunkin taulun ja sen sisältämät ominaisuudet.

Tämän jälkeen tutustuin ERDPlus-sovellukseen ja aloin laatimaan ER-kaaviota josta taulujen väliset suhteet käyvät ilmi:

![alt text](/er-kaavio.png)

Relaatiokaavion loin suoraan kääntämällä ER-kaaviosta. Tässä kohtaa lisäsin myös rajoitteet, kuten tekstisyötteiden pituudet, päivämäärät, sekä estin null-arvot ja varmistin primary- ja foreign-avainten oikeellisuuden:

![alt text](/relaatiokaavio.png)

Generoin taulujen luomiseen vaadittavan skriptin suoraan relaatiokaavion pohjalta:

[Tietokannan luominen](create_tables.sql)

Seuraavaksi lisäsin tietokantaan testidataa kyselyitä varten:

[Datan lisäys](insert_data.sql)

Lopuksi loin viisi kyselyä joiden kuvaukset ja koodi löytyvät alta:

[Kyselyt](queries.sql)
