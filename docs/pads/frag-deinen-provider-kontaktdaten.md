# Kontaktdaten der Provider

[TOC]

Um in dem Formular den User beim ertsellen des Anschreibens zu unterstützen, benötigen wir die Kontaktdaten aller Provider.

## Links

* Liste der Bundesnetzargentur aller gemeldeter TelekommunikationsFirmen (160Seiten)
\url{https://www.bundesnetzagentur.de/SharedDocs/Downloads/DE/Sachgebiete/Telekommunikation/Unternehmen\_Institutionen/Anbieterpflichten/Meldepflicht/TKDiensteanbieterPDF.pdf?\_\_blob=publicationFile\&v=80}
* 

## Welche Daten

Wir benötigen vorraussichtlich folgende Daten der Firmen:
* Firmenname   (muss)
* KontaktMail  (muss)
* Adresse      (solte)
* WebFormulare (kann)
* Fax          (kann)

Anmerkung: die "Werte" in Klammern stellen dar, wie wichtig die Angabe für das Projekt sind.


## Datenstrucktur 
Wie sollen die Daten struckturiert sein, damit diese durch maschinell verarbetiet werden und so im Formular genutz werden können. 
Die verbreitesten Vormate in der Webtechnologie sind Json und Yaml. Ich halte Yaml für das bessere Format um Daten zu halten, da es Kommentare, mehrzeilige oder leere Strings sowie viele Variablentypen abbilden kann. Allerding muss man beim Einrückung per Leerzeichen statt Tab vorsichtig sein. Einige Tools wandeln ungefragt Tabs in Lehrzeichen um und man ist dann ständig am nacharbeiten. Deshalb nutzen wir konsequent immer 2 Lehrzeichen je Einrückung.

Links:
* Yaml Syntax: h\url{https://yaml.org/start.html}
* Yaml Validator:
  * \url{https://codebeautify.org/yaml-validator}
  * \url{http://www.yamllint.com/} Achtung hier werden Kommentare entfernt
  * \url{https://onlineyamltools.com/prettify-yaml}
  * \url{https://nodeca.github.io/js-yaml/}   Bitte hiermit die Daten prüfen, da wir wahrscheinlich diese Lib einbinden
  

### Beispiel
Im folgenden sind 2 fiktive Beispiele dokumentiert. Im ersten Beispiel, sind die Attribute und deren Verwendung in den Kommentaren beschrieben.

```yaml
# Kommentare des Bearbeiters sollten über den jeweiligen Eintrag stehen. 
# z.B. Quelle  \url{https://mogelcom.de/help/dsgvo}
# mogelcom: die eindeutige ID "mogelcom" des Providers
mogelcom:
  # date: wann wurde der Eintrag aufgenommen bzw. das letzte mal geändert
  date: 2019-05-23
  # name: Der Name des Anbieters wie er in der Anfrage erscheint.
  name: MogelCom
  # desc: Die Beschreibung des Anbieters, 
  #       damit der User auch den richtigen auswählen kann.
  desc: |
    Die MogelCom, aus Deutschland.
    Wir wollen nur ihr Bestes.
  # mail: Die Mailadresse über die eine DSGVO-Anfrage eingereicht werden kann.
  mail: dsgvo@mogelcom.de
  # addr: Die vollständige Postadresse, welche als Empfänger für den 
  #       Postversand genutzt werden kann. 
  addr: |
    MogelCom AG
    z.H. Hr. Mustermann
    Dorfstrasse 42
    12345 Hauptstaat
    Deutschland
  # web: Url zu dem Webformular über das man die DSGVO 
  #      Anfrage einreichen kann.
  web: \url{https://mogelcom.de/dsgvo}
  # fax: Die Telefonnummer an die man die Anfrage perr
  #      Fax stellen kann.
  fax: +49 30 123456789

# Dies ist der nächste Provider mit der ID "provider"
provider:
  name: Provider GmbH
  desc: |
    Der Provider,
    deines Vertrauens
  mail: support@provider.de
  addr: |
    Provider
    Postfach 1234
    98765 Nirgendwo
    DSchland
```


