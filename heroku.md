 L’objectiu general d’aquesta activitat és conèixer i configurar diverses eines per treballar amb el SGBD Postgresql instal.lat en la pràctica anterior. Conèixer el funcionament de Postgresql com a servei utilitzant la plataforma gratuïta Heroku. Així com practicar diverses ordres d’utilitat en la consola.

 


1. Configurar aplicació i compte Heroku
     1. Coneixeu què és una Plataforma de Servei( Paas) al núvol ? Expliqueu breument el concepte i la utilitat:

        > Plataforma com a servei (PAAS) és un entorn de desenvolupament i implementació complet en el núvol, amb recursos que permeten lliurar tot, des d'aplicacions senzilles basades en el núvol fins a aplicacions empresarials sofisticades habilitades per al núvol. Vostè li compra els recursos que necessita a un proveïdor de serveis en el núvol, als quals s'accedeix a través d'una connexió segura a Internet,
        > però només paga per l'ús que fa d'ells.
        >
        >
        >
        > Igual que IaaS, PAAS inclou infraestructura (servidors, emmagatzematge i xarxes), però també inclou middleware, eines de desenvolupament, serveis d'intel·ligència empresarial (BI), sistemes d'administració de bases de dades, etc. PAAS està dissenyat per sustentar el cicle de vida complet de les aplicacions web: compilació, proves, implementació, administració i actualització.
        >
        >  
        >
        >  PAAS permet evitar la despesa i la complexitat que suposen la compra i l'administració de llicències de programari, la infraestructura d'aplicacions i el middleware subjacents, les eines de desenvolupament i altres recursos. Vostè administra les aplicacions i els serveis que desenvolupa i, normalment, el proveïdor de serveis en el núvol administra tota la resta.

   2. Ens centrarem en la Plataforma Heroku ja que té un pla gratuït que només cal registar-se i és una de les plataformes més utilitzades darrere de AWS i Google App Engine. A més te suport per les bases de dades Postgres. Expliqueu característiques i beneficis de la plataforma Heroku.

>  Heroku és un dels PAAS més utilitzats en l'actualitat en entorns empresarials per la seva forta enfocament en resoldre el desplegament d'una aplicació. A més et permet gestionar els servidors i les seves configuracions, escalament i l'administració. A Heroku només li dius quin llenguatge de backend estàs utilitzant o quina base de dades vas a utilitzar i et preocupes únicament pel desenvolupament de la teva aplicació.
>
>  No té servidors propis, sinó que els contracta del núvol EC2 d'Amazon i, una mica a la manera d'Apple, ofereix conveniència a canvi de restringir opcions de desenvolupament. Mentre que Amazon EC2 és una plataforma totalment oberta que només abstreu el maquinari, però el programador controla des del sistema operatiu fins al llenguatge que vol fer servir, Heroku decideix i gestiona el sistema operatiu (Debian), els servidors (Nginix, Varnish i Thin per proxy invers, la memòria cau i servidor d'aplicacions Ruby, respectivament), i també ofereix un menú selecte d'opcions per a programar en Ruby: pots pujar qualsevol codi que faci servir rack, però recomanen les seves pròpies "gemmes" o paquets nadius de Ruby. Ara que djangy i Stable anuncien el mateix tipus de serveis per als programadors en Python

 

> Avantatges:
>
>  Lliurament ràpid d'aplicacions, cicles curts
>
> La plataforma Heroku us permetrà crear i implementar aplicacions ràpidament. Ja sigui que estigueu treballant en un projecte personal o en un producte de l'empresa, Heroku us ajuda a protegir ràpidament idees noves, a crear noves funcions o a oferir noves aplicacions a la producció i més enllà.
>
> Plataforma políglota
>
> Heroku és flexible i s'adapta al vostre estil de desenvolupament. La plataforma suporta oficialment vuit idiomes i marcs de desenvolupament populars. Heroku Buildpacks estén el sistema de compilació per suportar idiomes o personalitzacions addicionals.
>
> DevOps simplificat
>
> Amb una plataforma totalment gestionada, el personal d'Heroku supervisa els temps d'activitat, el rendiment i la infraestructura, alliberant-vos de la distracció de configurar i gestionar els vostres propis servidors i operacions de maquinari.
>
> Executeu aplicacions de manera gratuïta
>
> Una varietat de serveis gratuïts a Heroku us pot ajudar a experimentar, a jugar o a provar idees noves amb els vostres usuaris. Registrar-se amb Heroku us ofereix un grup d'hores de dino per utilitzar-les a les vostres aplicacions. Molts dels nostres proveïdors de complements també ofereixen serveis gratuïts.
>
> Serveis de dades integrats
>
> Els serveis de dades administrats d'Heroku estan optimitzats per als desenvolupadors, cosa que facilita encara més la creació d'aplicacions basades en dades. Trieu Heroku Postgres, Heroku Redis i Apache Kafka a Heroku o serveis addicionals de tercers.
>
> Ecosistema de serveis complementaris
>
> Creeu aplicacions més ràpidament estenent la plataforma Heroku amb els serveis de núvol totalment gestionats que es poden instal·lar amb un sol clic. Més de 150 complements de Heroku són compatibles amb totes les etapes del desenvolupament i l'operació de l'aplicació.
>
> Escalabilitat sense problemes
>
> Una vegada que la vostra aplicació guanyi tracció amb els usuaris, podeu escalar els recursos de l'aplicació amb un sol clic o una ordre utilitzant el Tauler d'eines Heroku o CLI. La característica d'autocompressió de la plataforma permet que les vostres aplicacions s'incrementin o baixin de manera instantània quan sigui necessari.
>
> Documentació i suport
>
> El Heroku Dev Center ofereix una gran quantitat d'informació, incloent documents de referència tècnics, guies per a començar per idioma, recursos d'aprenentatge, registre de canvis, i molt més. A més, Heroku ofereix una varietat d'opcions de suport per a l'assistència personalitzada. També ens sentim orgullosos d'escriure el manifest d'aplicació de dotze factors.
>
> Col·laboració en equip
>
> Heroku Teams ofereix espais de treball per a aplicacions compartides i eines centralitzades per gestionar l'equip, els processos i la facturació del projecte d'aplicació. Heroku Flow proporciona eines de col·laboració i fluxos de treball per donar suport al vostre lliurament continu i pràctiques d'integració contínua.

 


3. Anem a configurar la nostra base de dades a Heroku. Aneu a Heroku   [HEROKU](<https://www.heroku.com/postgres>) .Heu de cerar un compte amb el pla gratuït, instal.lar o crear una aplicació ( des de el Dashboard ) i després heu de crear una base de dades ( en les propietats de la vostra app heu d’afegir l’add-on Heroku Postgres :: Database triant el pla gratuït Hobby Free.

> Un cop logegat clico a ‘create new app’

![entroHeroki](/img/entroHeroki.png)



>Aquest em demane un nom per la app i una regio i clico a crear.

![creoApp](\img\creoApp.png)



>Un cop creada vaig a ‘Configurea add-ons’ per a afegira la base de dades

![addons](\img\addons.png)

>Selecciono l’opcio ‘Hobby Dev -Free’

![3](\img\3.png)

>I ja tinc la meva base de dades postgres

![4](\img\4.png)

4. Al final us quedarà alguna cosa semblant a:

   ![5](\img\5.png)

 Nota: recordeu primer heu de crear una aplicació i després instal.lar l’addon base de dades Postgres.


2. Connectar-nos a la nostra base de dades

   Provarem diferents vies per comunicar-nos amb la nostra base de dades. Primer de tot em de tindre molt clar les credencials de la nostra base de dades ( aquestes dades ens permetran comunicar-nos amb ella des de qualsevol lloc. Les trobareu en la base de dades, Settings i Database Credentials. Trobeu en la imatge un exemple del que us ha de sortir.

   Utilitzarem aquestes dades per connectar-nos.

   1. Des de la consola del nostre terminal: Utilitzant la instrucció ( substituint els valors corresponents pels de la nostra base de dades):

      `$psql -h myhost -d mydb -U myuser`

       ( si no us demanen el password pot ser que utilitzeu : `psql -h myhost -d mydb -U myuser -W`)

       Proveu que us heu connectat mirant les taules que hi ha i les bases de dades. Proveu de crear una taula i inserir algunes dades.

      > Em conecto a la base de dades de Heroku

![7](\img\7.png)

> Creo una taula a la base de dades

![8](\img\8.png)

>Insereixo dades a la taula i les monstro per terminal

![9](\img\9.png)

2. Des del programa pgAdmin3. Per aix`heu d’instl.lar el programa amb la instrucció:

 	`$ sudo apt-get install pgadmin3`

![10](\img\10.png)

​	En la configuracio aneu Add connection to a server ( representat a la
​	toolbar amb un endoll). I a les propietats heu d’omplir els camps
​	de forma adient. Us ha de quedar alguna cosa semblant a:

![11](\img\11.png)

De nou comproveu la connexió i mireu les taules i podeu crear una 					taula o inserir algun element.

>Miro la taula creada per terminal

![12](\img\12.png)

> Creo una nova taula

![13](\img\13.png)



>Insereixo dades a la taula creada anteriorment

![14](\img\14.png)

>Mostro les dades inserides a la taula creada per pgadmin3

![15](\img\15.png)

3. Pgadmin3 es troba desfasat i fa un any va sortir la versió 4.
   Proveu d’instal.lar en un sistema Windows i proveu com funciona.

>Primer s'ha de descarregar el programa de la pagina pgadmin.org, jo he
>sel·leccionat la ultima versio d’aquest que es la 3.6

![16](\img\16.png)

>Un cop cliques al l’enllaç et porta a la seguent pagina on tens 3
>fitxers 2 son de informacio i el arxiu .exe es l’executable que
>necessitem nosaltres.

![17](\img\17.png)

>Un cop descarregat, l’instal·lacio es senzilla nomes s’ha de clicar
>seguent tot el rato.

![18](\img\18.png)

![19](\img\19.png)



> I un cop instal·lat l'executo

![20](\img\20.png)

 

>Tal i com ja hem fet avans, s’ha de posar el nom de la base de dades,
>usuari, port, host i password.

![21](\img\21.png)



>I ja un cop clicat a guardar ja podrem accedir a la base de dades. Aquí
>et monstruo un dels registres inserits a taules creades anteriorment.

![22](\img\22.png)



3.  Carregar un fitxer .sql

   La carrega del fitxer sql al pgadmin es senzilla, simplement, s’ha de sel·leccionar la base de dades i al menu superior clicar a ‘tools’  i clicar l’opcio ‘query tool’ on s’et obrira la pagina seguent i clicant al l’icona de la carpeta que es pot veure a la part superior esquerra s’et obrira la pagina filla que es veu damunt on simplement li has de passar el path de on tens el fitxer per a sel·leccionarlo i carregar-lo.

   ![23](\img\23.png)

>Un cop carregat s’et obre com si fos un query que haguessis escrit
>alli i simlemnt s’executa 

![24](\img\24.png)

>I aquí et monstro que ha anat tot be perque al fer el select de la
>taula que no existie avans de la carrega del fitxer i els registres
>que tampoc existien hi son.

![25](\img\25.png)

Per importar fitxers .sql amb una seqüència d’instruccions sql es pot
fer de dues formes diferents. Des de el nostre sistema utilitzant l’ordre

`$psql postgres -f arxiu.psql ( on postgres es el nom del bd a executar el fitxer arxiu.sql)`

I des-de dintre del nostre SGBD utilitzant la comanda `\i nom_fitxer.psql` :

Heu de copiar i inserir ( Bases de dades) les pàgines de 22 i 23. Per
això primer heu de copiar i crear un fitxer .sql amb les instruccions. Executeu el fitxer d’alguna de les formes que hem vist. Axí tindreu les taules productes, proveidors, preus i guanys amb alguns registres.



![26](\img\26.png)

Per què seveix la instrucció `\! pwd` ? Per que pot ser útil ?

>Et diu el directori en el que estas situat, la comnda `\!` serveix
>per aexectura una comanda dins del servidor. Per a la carrega de
>arxius .sql desde path relatiu.

![28](/img/28.png)

4. Instruccions psql

   Llegiu la documentació de L’IOC ( Bases de dades) les pàgines de 20-25. Entreu a la consola d’una base de dades Postgres.

   1. Executeu l’ordre i expliqeu el significat de cada variable.

      `\echo :DBNAME :ENCODING :HOST :PORT :USER ;`

      >Aquesta comanda et diu: El nom de la base de dades, la codificacio de aquesta, el nom del host de la base de dades, el port de la base de dades i l’usuari amb el qual s’ha entrat a aquesta

      ![27](\img\27.png)

5. Formats de sortida:

   1. Especificant directament el fitxer destí al finalitzar una sentencia:

      Ex: `select * from productes where part = “Processador” \g /your_path.../productes.txt`

      ![29](\img\29.png)

   2. Mitjançant ordre \o: indicant la sortida de sentències d’ara endavant. ( tornar a executar \o per la sortida estandar)

       Ex: `\o /your_path/prova.txt`

       Diverses instruccions que la seva sortida serà al prova.txt

       `\o`

       Tornem a la sortida estandar ( normal per pantalla).

       Feu al menys 3 proves canviant la sortida ( fitxer, sortida estandar)

      >Aquest, afegeix cada consuta a un fitxer que tu defineixes.

      ![30](\img\30.png)

      >  I aquest es el fitxer definit al qual es van afegint.

      ![31](\img\31.png)

   3. Especificar formats de sortida amb l’ordre pset. Els formats de sortida són aligned, unaligned, html i làtex ( especial interès aquests dos darrers).

       Ex: `\pset format html`

       ( per defecte heu de tornar al format aligned)

       Feu al menys 5 proves canviant el format de sortida. Podeu utilitzar diferents paràmetres de format taula, border, camp separador etc...

      Feu al menys 5 proves canviant el format de sortida.

      > Format html:

      ![32](\img\32.png)

      > Format latex:

      ![33](\img\33.png)

      > Format unaligned: 

      ![34](\img\34.png)

      > Format aligned: 

      ![35](\img\35.png)

      > Format wrapped :

      ![36](\img\36.png)

   ​    

      `\pset parameter [ value ]`

   ​    

       This command sets options affecting the output of query result tables. parameter describes which option is to be set. The semantics of value depend thereon.


   ​    

       Adjustable printing options are:


   ​    

       `format`


   ​    

       Sets the output format to one of unaligned , aligned , html , latex , or troff-ms . Unique abbreviations are allowed. (That would mean one letter is enough.)


   ​    

       "Unaligned" writes all columns of a row on a line, separated by the currently active field separator. This is intended to create output that might be intended to be read in by other programs(tab-separated, comma-separated). "Aligned" mode is the standard, human-readable, nicely formatted text output that is default. The "HTML" and "LaTeX" modes put out tables that are intended to be included in documents using the respective mark-up language. They are not
       
       complete documents! (This might not be so dramatic in HTML, but in LaTeX you must have a complete document wrapper.)


   ​    

       `border`


   ​    

       The second argument must be a number. In general, the higher the number the more borders and lines the tables will have, but this depends on the particular format. In HTML mode, this will translate directly into the border=... attribute, in the others only values 0 (no border), 1 (internal dividing lines), and 2 (table frame) make sense.


   ​    

       expanded (or x )


   ​    

       You can specify an optional second argument, if it is provided it may be either on or off which will enable or disable expanded mode. If the second argument is not provided then we will toggle between regular and expanded format. When expanded format is enabled, query results are displayed in two columns, with the column name on the left and the data on the right. This mode is useful if the data wouldn't fit on the screen in the normal "horizontal" mode.


   ​    

       Expanded mode is supported by all four output formats.


   ​    

      `null`
    
       The second argument is a string that should be printed whenever a column is null. The default is not to print anything, which can easily be mistaken for, say, an empty string. Thus, one might choose to write \pset null '(null)' .


   ​    

      `fieldsep`

   ​    

       Specifies the field separator to be used in unaligned output mode. That way one can create, for example, tab- or comma-separated output, which other programs might prefer. To set a tab as field separator, type \pset fieldsep '\t' . The default field separator is '|' (a vertical bar).


   ​    

       `footer`


   ​    

       You can specify an optional second argument, if it is provided it may be either on or off which will enable or disable display of the default footer (x rows) . If the second argument is not provided then we will toggle between on and off.


       `numericlocale`


   ​    

       You can specify an optional second argument, if it is provided it may be either on or off which will enable or disable display of a locale-aware character to seperate groups of digits to the left of the decimal marker. If the second argument is not provided then we will toggle between on and off.


   ​    

       `recordsep`


   ​    

       Specifies the record (line) separator to use in unaligned output mode. The default is a newline character.


   ​    

       `tuples_only (or t )`


   ​    

       You can specify an optional second argument, if it is provided it may be either on or off which will enable or disable the tuples only mode. If the second argument is not provided then we will toggle between tuples only and full display. Full display shows extra information such as column headers, titles, and various footers. In tuples only mode, only actual table data is shown.


   ​     

       `title [ text ]`


       Sets the table title for any subsequently printed tables. This can be used to give your output descriptive tags. If no argument is given, the title is unset.


   ​    

       tableattr (or T ) [ text ]


   ​    

       Allows you to specify any attributes to be placed inside the HTML table tag. This could for example be cellpadding or bgcolor . Note that you probably don't want to specify border here, as that is already taken care of by \pset border .


       `pager`



       Controls use of a pager for query and psql help output. If the environment variable PAGER is set, the output is piped to the specified program. Otherwise a platform-dependent default (such as more ) is used. When the pager is off, the pager is not used.  
    
       When the pager is on, the pager is used only when appropriate, i.e. the output is to a terminal and will not fit on the screen. (psql does not do a perfect job of estimating when to use the pager.) \pset pager turns the pager on and off. Pager can also be set to always , which causes the pager to be always used, or you can set the pager to on which will enable the usage of the pager when appropriate, or you can set the pager to off which will disable the pager.



      4. Combinar els apartats anteriors. Canviant format de sortida i sortida.


​       

      5. Per que serveixen les orders ( des de consola de postgres):
    
         `\l`
    
          `\d` : Ficar només `\d` i `\d nom_taula ( ex: proveidors)`. L'ordre `\d` és útil per mostrar informació sobre l'SGBD: taules, índexs,


​       

      6. Creeu una base de dades nova : provaAlmata.



      7. Us podeu conectar des de consola a la nova base de dades.
    
         `\c provaAlmata`


​       

      8. Mireu els usuaris : \du. Quin son ? Tenen alguna similitut amb els vostres usuaris de la vostra base de dades ¿


​       

      9. Torneu a la vostra base de dades.



   5. Instal.lar pgAdmin4



      Aneu a la página web: [Pgadmin](<https://www.pgadmin.org/>)
        
      1. En un entorn Windows ( ja sigui el vostre ordinador o una màquina virtual amb qualsevol sistema Windows ): Aneu a la secció Downloads i seguiu les instruccions. Un cop instal.lat connecteu a la vostra Base de Dades Heroku. Mirar les taules i executeu algún script.
    
         > Ja ho pots veure al punt 3 de la seccio connectarnos a la base de dades com ho he fet i funciona correctament.
    
      2. Opcional: instal.lar en un sistema Ubunut Linux. Us recomano
         fer-ho en una màquina virtual o feu abans un snapshot. Poden tocar coses que després no es puguin recuperar. Seguint les instruccions:
    
         [Instal·lacio pgadmin4 ubuntu16.04](<http://proyectosbeta.net/2016/10/instalar-pgadmin4-en-ubuntu-16-04-lts/>)
    
         >Instalació ubuntu 18.04 pgadmin4:
    
         > Primer hauriem d'executar la seguent commanda per a instal·lar els paquets necessaris:
    
         ![37](\img\37.png)
    
         > Despres crearem la carperta on executarem l’instalacio i crearem un entorn:

![38](\img\38.png)

			> Seguidament entrarem a la carpeta que sens ha creat dins al crear letorn i l’activarem i descrregarem el pgadmin4 amb la seguent comanda.

![39](\img\39.png)

>Un cop descarregat procedirtem al’instalacio amb la seguent comanda

![40](\img\40.png)

> I a la seguent carpeta crearem l’arxiu de configuracio per a poder
> executar el pgadmin4.

![41](\img\41.png)

> I executarem la seguent comanda per a fer correr el pgadmin:

![42](\img\42.png)

> I ja tenim el pgamin executantse al nostre ubuntu 18.04

![43](img\43.png)



Link utilitzat:

[Instal·lacio PgAtmin4 Ubuntu18.04](<https://linuxhint.com/install-pgadmin4-ubuntu/>)

