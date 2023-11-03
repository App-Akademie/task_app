import 'package:task_app/private/features/tasks/models/task.dart';
import 'package:task_app/private/features/tasks/models/task_model.dart';
import 'package:task_app/tasks/task_list.dart';

const List<Task> globalTaskList = [
  ...chapter3TaskList,
  ...chapter4TaskList,
  ...chapter5TaskList,
  ...chapter6TaskList,
];

const TaskModel t_3_3_8_1 = TaskModel(
  chapter: 3,
  subChapter: 3,
  lesson: 8,
  taskNumber: 1,
  taskTitel: "Reverse Number",
  taskText:
      """Erstelle eine Funktion, eine gegebene Zahl umdreht. Die Funktion soll einen Parameter vom Typ `int` entgegennehmen und einen `int` zurückgeben. Die Funktion soll die Zahl umdrehen und zurückgeben. Beispiel: 1234 -> 4321

Hinweis: Das UI ist bereits fertig implementiert. Du musst nur die Funktion `reverseNumber` implementieren.""",
);

const TaskModel t_3_3_8_2 = TaskModel(
  chapter: 3,
  subChapter: 3,
  lesson: 8,
  taskNumber: 2,
  taskTitel: "Prim Checker",
  taskText:
      """Erstelle eine Funktion, die überprüft, ob eine gegebene Zahl eine Primzahl ist. Die Funktion soll einen Parameter vom Typ `int` entgegennehmen und einen `bool` zurückgeben. Die Funktion soll `true` zurückgeben, wenn die Zahl eine Primzahl ist, ansonsten `false`.

Hinweis 1: Das UI ist bereits fertig implementiert. Du musst nur die Funktion `isPrime` implementieren.
Hinweis 2: Weder 0 noch 1 sind Primzahlen.
""",
);
const TaskModel t_3_3_8_3 = TaskModel(
  chapter: 3,
  subChapter: 3,
  lesson: 8,
  taskNumber: 3,
  taskTitel: "Seconds Formatter",
  taskText:
      """Erstelle eine Funktion, die eine gegebene Anzahl an Sekunden in Stunden, Minuten und Sekunden umrechnet. Die Funktion soll einen Parameter vom Typ `int` entgegennehmen und einen `String` zurückgeben. Die Funktion soll die Sekunden in Stunden, Minuten und Sekunden umrechnen und als String zurückgeben. Beispiel: 12345 Sekunden -> 3 Stunden, 25 Minuten, 45 Sekunden

Hinweis: Das UI ist bereits fertig implementiert. Du musst nur die Funktion `formatSeconds` implementieren.
""",
);
const TaskModel t_3_3_8_4 = TaskModel(
  chapter: 3,
  subChapter: 3,
  lesson: 8,
  taskNumber: 4,
  taskTitel: "Vowel Counter",
  taskText:
      """Erstelle eine Funktion, die die Anzahl der Vokale in einem gegebenen String zählt. Die Funktion soll einen Parameter vom Typ `String` entgegennehmen und einen `int` zurückgeben. Die Funktion soll die Anzahl der Vokale im String zählen und zurückgeben. Beispiel: "Hallo Welt" -> 3

Hinweis: Das UI ist bereits fertig implementiert. Du musst nur die Funktion `countVowels` implementieren.
""",
);
const TaskModel t_3_3_8_5 = TaskModel(
  chapter: 3,
  subChapter: 3,
  lesson: 8,
  taskNumber: 5,
  taskTitel: "Palindrom Checker",
  taskText:
      """Erstelle eine Funktion, die überprüft, ob ein gegebener String ein Palindrom ist. Die Funktion soll einen Parameter vom Typ `String` entgegennehmen und einen `bool` zurückgeben. Die Funktion soll `true` zurückgeben, wenn der String ein Palindrom ist, ansonsten `false`.
Beispiel: "Anna" -> true, "Hallo" -> false

Hinweis 1: Ein Palindrom ist ein Wort, das vorwärts und rückwärts gelesen das gleiche Wort ergibt.
Hinweis 2: Das UI ist bereits fertig implementiert. Du musst nur die Funktion `isPalindrome` implementieren.
""",
);
const TaskModel t_4_5_1_1 = TaskModel(
    chapter: 4,
    subChapter: 5,
    lesson: 1,
    taskNumber: 1,
    taskTitel: "Hello World",
    taskText:
        "Implementiere ein Stateless Widget mit einem 'Hello World'-Text-Widget.");

const TaskModel t_4_5_2_1 = TaskModel(
    chapter: 4,
    subChapter: 5,
    lesson: 2,
    taskNumber: 1,
    taskTitel: "Hello World (zentriert)",
    taskText:
        "Erstelle ein Stateless Widget, das ein Center-Widget mit einem zentriertes 'Hello World'-Text-Widget anzeigt.");

const TaskModel t_4_5_2_2 = TaskModel(
  chapter: 4,
  subChapter: 5,
  lesson: 2,
  taskNumber: 2,
  taskTitel: "Hello Name!",
  taskText:
      "Erstelle ein Stateless Widget mit dem Namen 'MyStatelessWidget', das einen Text und einen ElevatedButton enthält. Positioniere den Text oberhalb des Buttons. Der Button soll die Beschriftung 'Klick mich' haben, und der Text des Text-Widgets soll 'Hello [Dein Name]' lauten (ersetze [Dein Name] mit deinem eigenen Namen). Der Button soll klickbar sein, aber noch keine Funktion haben.",
);

const TaskModel t_4_5_2_3 = TaskModel(
  chapter: 4,
  subChapter: 5,
  lesson: 2,
  taskNumber: 3,
  taskTitel: "Show Name Button",
  taskText:
      "Erstelle ein Stateful Widget mit dem Namen 'MyNameWidget'. Der Zustand (State) des Widgets soll anfangs ein leerer String sein. Integriere ein Text-Widget und einen ElevatedButton in das UI. Das Text-Widget zeigt den aktuellen State an (zu Beginn also ein leerer String). Der Button soll mit 'Name anzeigen' beschriftet sein. Bei einem Klick auf den Button soll der State auf deinen Namen gesetzt werden, und der neue State soll im Text-Widget dargestellt werden.",
);

const TaskModel t_4_5_2_4 = TaskModel(
  chapter: 4,
  subChapter: 5,
  lesson: 2,
  taskNumber: 4,
  taskTitel: "Show / hide Name Button",
  taskText:
      "Erstelle ein Stateful Widget mit dem Namen 'ShowHideNameWidget'. Der Zustand (State) des Widgets soll aus 2 Strings bestehen. Ein leerer String für den Namen sein und ein String für den Text des Buttons. Integriere ein Text-Widget und einen ElevatedButton in das UI. Das Text-Widget zeigt den aktuellen State an (zu Beginn also ein leerer String). Der Button soll am Anfang mit 'Name anzeigen' beschriftet sein. Bei einem Klick auf den Button soll der State auf deinen Namen gesetzt werden, und der neue State soll im Text-Widget dargestellt werden. Wenn der Name angezeigt wird, soll der gleiche Button den Text 'Name verstecken' haben. Klickt man jetzt auf den Button, soll der Name wieder verschwinden. Der Name soll also beliebig oft angezeigt und versteckt werden können.",
);

const TaskModel t_4_5_3_1 = TaskModel(
  chapter: 4,
  subChapter: 5,
  lesson: 3,
  taskNumber: 1,
  taskTitel: "Blue Containers",
  taskText:
      "Erstelle eine 'Column', die drei 'Container'-Widgets enthält. Jeder 'Container' soll eine Höhe und Breite von 100 haben. Färbe den ersten Container `blueGrey`, den zweiten `blue` und den dritten `cyan`.",
);

const TaskModel t_4_5_3_2 = TaskModel(
  chapter: 4,
  subChapter: 5,
  lesson: 3,
  taskNumber: 2,
  taskTitel: "Text Styles",
  taskText:
      "Erstelle eine 'Column', die drei 'Text'-Widgets enthält, alle mit dem Text 'App Akademie'. Das erste Text-Widget soll keinen 'style'-Parameter haben. Das zweite Text-Widget soll eine Schriftgröße von 16 haben, fett und blau sein. Das dritte Text-Widget soll eine Schriftgröße von 10 haben, kursiv (italic) und grün sein.",
);

const TaskModel t_4_5_3_3 = TaskModel(
  chapter: 4,
  subChapter: 5,
  lesson: 3,
  taskNumber: 3,
  taskTitel: "Center in Column",
  taskText:
      "Erstelle einen blauen 'Container' mit den Abmessungen 150 x 150. Integriere darin eine 'Column' mit zwei 'Text'-Elementen: 'App' und 'Akademie'. Zentriere beide Texte innerhalb des Containers.",
);
const TaskModel t_4_5_3_4 = TaskModel(
  chapter: 4,
  subChapter: 5,
  lesson: 3,
  taskNumber: 4,
  taskTitel: "Space in Row",
  taskText:
      "Erstelle eine 'Row' mit zwei 'Text'-Elementen: 'App' und 'Akademie'. Sorge für einen Abstand von 64 Einheiten zwischen den beiden Texten, ohne dafür einen 'Container' zu verwenden.",
);

const TaskModel t_4_5_3_5 = TaskModel(
  chapter: 4,
  subChapter: 5,
  lesson: 3,
  taskNumber: 5,
  taskTitel: "Colorful Rectangle",
  taskText:
      "Verwende 'Column', 'Row' und 'Container' Widgets, um das im Bild dargestellte Ergebnis nachzubauen.\nNutze Container der Größe 100 x 100.",
  taskImagePath: "assets/images/tasks/4.5.4.3.png",
);
const TaskModel t_4_5_3_6 = TaskModel(
  chapter: 4,
  subChapter: 5,
  lesson: 3,
  taskNumber: 6,
  taskTitel: "Shopping List",
  taskText:
      "Erstelle eine Klasse 'Product' mit den Attributen 'name' und 'price'. Anschließend generiere eine Liste von mindestens fünf solchen Produkten. Implementiere dann eine 'ListView', die diese Produkte auflistet. Jedes Listenelement (vom Typ `ListTile`) in der 'ListView' sollte den Namen und den Preis des jeweiligen Produkts enthalten und auf der linken Seite ein Einkaufswagen-Icon haben.\n\nHinweis: Verwende `shrinkWrap: true` in der `ListView`.",
);

const TaskModel t_5_1_1_1 = TaskModel(
  chapter: 5,
  subChapter: 1,
  lesson: 1,
  taskNumber: 1,
  taskTitel: "Styling Impacts",
  taskText:
      "Rekonstruiere den Screen aus dem Arbeitsblatt 5.1.1 (Aufgabe 1) und integriere die von dir identifizierten Einflüsse auf das Aussehen einer App.",
  taskImagePath: "assets/images/tasks/5.1.1.1.png",
);

const TaskModel t_5_1_1_2 = TaskModel(
  chapter: 5,
  subChapter: 1,
  lesson: 1,
  taskNumber: 2,
  taskTitel: "Style a Llama",
  taskText:
      "Rekonstruiere den Screen mit dem Lama aus dem Arbeitsblatt 5.1.1 (Aufgabe 2). Nutze dazu ein beliebiges Bild eines Lamas, sowie beliebige Daten für den Steckbrief. Erstelle eine separate 'styles'-Datei, in der du Konstanten für die Textstile und Abstände definierst. Verwende diese Konstanten dann in deinem Code, um Code-Duplikate zu vermeiden.",
  taskImagePath: "assets/images/tasks/5.1.1.2.png",
);

const TaskModel t_5_1_1_3 = TaskModel(
  chapter: 5,
  subChapter: 1,
  lesson: 1,
  taskNumber: 3,
  taskTitel: "Very own Material Button",
  taskText:
      "Baue einen Material Button in Flutter mit eigenen Widgets und Attributen (Container, Text, …) nach. Erstelle dazu ein Widget namens `CustomMaterialButton` innerhalb deine Solution Datei.\nAchte vor allem auf die abgerundeten Ecken, den Schatten sowie die Interaktivität.\n\nBonus: Stelle sogar den `Ripple`-Effekt des Buttons bei Berührung nach.\n\nTipp: Benutze die Widgets Container, Text, GestureDetector, InkWell, BoxDecoration, TextStyle, …",
);

const TaskModel t_5_1_1_4 = TaskModel(
  chapter: 5,
  subChapter: 1,
  lesson: 1,
  taskNumber: 4,
  taskTitel: "Animated Text",
  taskText:
      "Erstelle eine animierte Schriftgrößenänderung eines Text-Widgets mit dem Text 'Hello, App Akademie!' Die `fontSize` soll sich dabei innerhalb von 3 Sekunden von 20 auf 30 ändern.\n\nTipp: Nutze dazu das `AnimatedBuilder` Widget.",
);

const TaskModel t_5_1_3_1 = TaskModel(
  chapter: 5,
  subChapter: 1,
  lesson: 3,
  taskNumber: 1,
  taskTitel: "Google Fonts",
  taskText:
      "Wähle 4 beliebige Schriftarten aus Google Fonts aus und integriere sie. Ordne 4 Text-Widgets vertikal untereinander an und weise jedem Text-Widget eine der Schriftarten zu.",
);

const TaskModel t_5_1_3_2 = TaskModel(
  chapter: 5,
  subChapter: 1,
  lesson: 3,
  taskNumber: 2,
  taskTitel: "Fold / Unfold Text",
  taskText:
      "Erstelle ein Text-Widget in einer 'SizedBox', die 200px breit und 30px hoch ist. Der Text sollte länger als die Box sein und deshalb nach unten hin den überlaufenden Text ausblenden. Integriere die Funktionalität, dass der Text sich bei einem Klick darauf ausklappt.",
);

const TaskModel t_5_1_3_3 = TaskModel(
  chapter: 5,
  subChapter: 1,
  lesson: 3,
  taskNumber: 3,
  taskTitel: "Box Decoration",
  taskText:
      "Erstelle einen stilvollen Container mit einem Schatten, abgerundeten Ecken, Innenabstand, Hintergrundfarbe und einem Text-Inhalt.",
);

const TaskModel t_5_3_1_1 = TaskModel(
  chapter: 5,
  subChapter: 3,
  lesson: 1,
  taskNumber: 1,
  taskTitel: "Simple Image Asset",
  taskText:
      "Lade dir ein Bild auf deinen Computer herunter und füge es als Asset in diese App ein. Erstelle im Anschluss ein Widget, um das Bild anzuzeigen.",
);

const TaskModel t_5_3_1_2 = TaskModel(
  chapter: 5,
  subChapter: 3,
  lesson: 1,
  taskNumber: 2,
  taskTitel: "Image from Network",
  taskText:
      "Suche ein beliebiges Bild aus dem Internet und zeige es hier mittels der URL an.",
);

const TaskModel t_5_3_1_3 = TaskModel(
  chapter: 5,
  subChapter: 3,
  lesson: 1,
  taskNumber: 3,
  taskTitel: "Cached Network Image",
  taskText:
      "Füge das Package `cached_network_image` zur App hinzu und nutze das CachedNetworkImage Widget, um ein Bild aus dem Internet anzuzeigen. Teste anschließend, ob das Bild auch offline angezeigt wird.",
);

const TaskModel t_5_3_2_1 = TaskModel(
  chapter: 5,
  subChapter: 3,
  lesson: 2,
  taskNumber: 1,
  taskTitel: "Progress Indicator",
  taskText:
      "Nutze ein CachedNetworkImage Widget, um ein Bild aus dem Internet anzuzeigen. Zeige während des Ladevorgangs einen `CircularProgressIndicator`. Dabei soll der Progress Indicator den aktuellen Fortschritt anzeigen.",
);

const TaskModel t_5_3_2_2 = TaskModel(
  chapter: 5,
  subChapter: 3,
  lesson: 2,
  taskNumber: 2,
  taskTitel: "Error Image",
  taskText:
      "Nutze ein CachedNetworkImage Widget, um ein Bild aus dem Internet anzuzeigen. Zeige bei einem Fehler ein alternatives Bild, einen Text oder ein Icon an.",
);

const TaskModel t_5_3_2_3 = TaskModel(
  chapter: 5,
  subChapter: 3,
  lesson: 2,
  taskNumber: 3,
  taskTitel: "Shimmer Placeholder",
  taskText:
      "Nutze ein CachedNetworkImage Widget, um ein Bild aus dem Internet anzuzeigen. Zeige während des Ladevorgangs einen Shimmer Effect an.",
);

const TaskModel t_5_3_2_4 = TaskModel(
  chapter: 5,
  subChapter: 3,
  lesson: 2,
  taskNumber: 4,
  taskTitel: "Thumbnail Image",
  taskText:
      "Nutze ein CachedNetworkImage Widget, um ein Bild aus dem Internet anzuzeigen. Zeige während des Ladevorgangs ein Thumbnail an.",
);

const TaskModel t_5_3_3_1 = TaskModel(
  chapter: 5,
  subChapter: 3,
  lesson: 3,
  taskNumber: 1,
  taskTitel: "Camera & Gallery",
  taskText:
      "Erstelle 2 IconButtons, die jeweils die Kamera und die Galerie öffnen. Wähle entweder ein Bild aus der Galerie aus oder erstelle ein neues Bild mit der Kamera und zeige es anschließend unterhalb der IconButtons an.\nWenn erneut auf einen der IconButtons geklickt wird, soll das Bild aktualisiert werden.",
);

const TaskModel t_5_3_3_2 = TaskModel(
  chapter: 5,
  subChapter: 3,
  lesson: 3,
  taskNumber: 2,
  taskTitel: "Multiple Images",
  taskText:
      "Erstelle einen IconButton, der die Galerie öffnet. Wähle mehrere Bilder aus der Galerie aus und zeige sie anschließend untereinander in einer ListView an.\n\nBonus: Wennn du auf eines der Bilder klickst, soll es aus der Liste entfernt werden.",
);

const TaskModel t_5_4_1_1 = TaskModel(
  chapter: 5,
  subChapter: 4,
  lesson: 1,
  taskNumber: 1,
  taskTitel: "Try Catch",
  taskText:
      "Zeige einen `ElevatedButton` mit beliebigem Text. Sorge dafür, dass das Klicken des Buttons einen Fehler erzeugt. Dabei soll es sich um einen Laufzeitfehler handeln, damit deine App überhaupt gebaut werden kann.\n\nDrücke den Button und schaue in der Debug Console, ob tatsächlich ein Fehler ausgegeben wird.\n\nFange den Fehler jetzt mit einem `try-catch`-Block ab und gib den Fehler in einer SnackBar aus.\n\nTipp: Du kannst den Fehler mit 'throw Exception('[dein Exception-Name]')' erzeugen, falls du keinen anderen Fehler zur Hand hast.",
);

const TaskModel t_5_4_2_1 = TaskModel(
  chapter: 5,
  subChapter: 4,
  lesson: 2,
  taskNumber: 1,
  taskTitel: "Index Exception",
  taskText:
      "Erstelle eine Liste mit mindestens 5 Begriffen aus einer Kategorie deiner Wahl und zeige diese in einem 'ListView' an. Unter dem 'ListView' platziere ein `TextField` zur Eingabe eines Listenindex (z.B. 0 oder 4). Bei Änderungen im Textfeld soll der entsprechende Eintrag im ListView blau markiert (`tileColor`) werden.\nBei einer ungültigen Eingabe soll eine Fehlermeldung in Form einer `SnackBar` angezeigt werden. Die Fehlermeldung soll je nach Eingabefehler entweder 'Index außerhalb des Bereichs' oder 'Keine gültige Zahl' lauten.\nAlle anderen Fehler sollen nur in der Console geloggt werden.\nEgal welcher Fehler nun auftritt: Die farbliche Markierung soll im ListView entfernt werden.",
);

const TaskModel t_5_4_2_2 = TaskModel(
  chapter: 5,
  subChapter: 4,
  lesson: 2,
  taskNumber: 2,
  taskTitel: "Custom Exception",
  taskText:
      "Erstelle ein `TextField` für das Alter des Users und darunter einen `TextButton`. Bei einem Klick auf den Button soll das Alter des Users in eine Zahl umgewandelt werden. Dabei kann es zu einem Fehler kommen, wenn der User einen ungültigen Wert eingibt. Gib in diesem Fall die Fehlermeldung 'Ungültiges Alter' in einer `SnackBar` aus.\n\nDas eingegebene Alter soll größer als 0 und kleiner als 100 sein.\nIst das Alter <= 0 oder >= 100, soll eine `AgeException` geworfen werden. Fange diese Exception ab und gib die Fehlermeldung 'Alter muss zwischen 0 und 100 liegen' in einer `SnackBar` aus.\n\nWenn das Alter passt, gib das Alter in einer Snackbar aus!\n\nTipp: Erstelle eine eigene Exception-Klasse `AgeException`, die `Exception` implementiert.",
);

const t_5_5_1_1 = TaskModel(
  chapter: 5,
  subChapter: 5,
  lesson: 1,
  taskNumber: 1,
  taskTitel: "Async Methods",
  taskText:
      "Erstelle einen `ElevatedButton`, der bei einem Klick zwei asynchrone Methoden aufruft und anschließend 'Fertig' in der Konsole ausgibt. Beide Methoden inkrementieren einen separaten Zähler, der bei 0 startet und schreiben danach ihren Methoden-Name in die Konsole. Gib die Werte der Zähler jeweils in einem Text-Widget an.\n\nTeste den Button und beobachte die Ausgabe in der Konsole.\n\nSchreibe jetzt 'await warteKurz();' an den Anfang deiner beiden Methoden. Teste den Button jetzt erneut und beobachte die Ausgabe in der Konsole.\nWas fällt dir auf? Warum ist das so?",
);

const TaskModel t_5_5_2_1 = TaskModel(
  chapter: 5,
  subChapter: 5,
  lesson: 2,
  taskNumber: 1,
  taskTitel: "Async Progress Bar",
  taskText:
      "Erstelle einen `ElevatedButton` unterhalb eines `LinearProgressIndicator`, der den Fortschritt einer asynchronen Operation anzeigt. Die ProgressBar soll am Anfang leer sein und sich nach Klicken des Buttons innerhalb von 3 Sekunden auffüllen.\n\nBonus: Umrande die ProgressBar, sodass sie auch leer sichtbar ist.\n\nBonus 2: Ein erneutes Klicken während der asynchronen Operation soll keine Auswirkung haben.\n\nBonus 3: Zeige den aktuellen Fortschritt innerhalb der Fortschrittsanzeige in Prozent an (Tipp: `Stack`-Widget).\n\nTipp: Du musst hier nicht auf das `Future` warten.",
);

const TaskModel t_5_5_2_2 = TaskModel(
  chapter: 5,
  subChapter: 5,
  lesson: 2,
  taskNumber: 2,
  taskTitel: "Roll the Dice! (.then)",
  taskText: """Erstelle einen `ElevatedButton` zum Werfen eines Würfels (D6).
Das Würfeln soll 2 Sekunden dauern. Während des Würfelns soll in einem Text-Widget unter dem Button "Würfel wird geworfen..." angezeigt werden.
Anschließend soll das Ergebnis des Würfelns im selben Text-Widget angezeigt werden.
Wenn ein Fehler auftritt, soll auch dieser im selben Text-Widget angezeigt werden.
Sorge dafür dass zufällig entschieden wird, ob ein Fehler auftritt oder nicht.
Löse diese Aufgabe nur mit `.then` und `.catchError`.""",
);
const TaskModel t_5_5_2_3 = TaskModel(
  chapter: 5,
  subChapter: 5,
  lesson: 2,
  taskNumber: 3,
  taskTitel: "Roll the Dice! (try-catch)",
  taskText: """
Das ist die gleiche Aufgabe wie davor, nur mit dem Unterschied, dass du sie mit einem try-catch-Block lösen sollst:

Erstelle einen `ElevatedButton` zum Werfen eines Würfels (D6).
Das Würfeln soll 2 Sekunden dauern. Während des Würfelns soll in einem Text-Widget unter dem Button "Würfel wird geworfen..." angezeigt werden.
Anschließend soll das Ergebnis des Würfelns im selben Text-Widget angezeigt werden.
Wenn ein Fehler auftritt, soll auch dieser im selben Text-Widget angezeigt werden.
Sorge dafür dass zufällig entschieden wird, ob ein Fehler auftritt oder nicht.
Löse diese Aufgabe mit einem async-await und einem try-catch-Block.""",
);
const TaskModel t_5_5_2_4 = TaskModel(
  chapter: 5,
  subChapter: 5,
  lesson: 2,
  taskNumber: 4,
  taskTitel: "Roll the Dice! (FutureBuilder)",
  taskText: """
Das ist die gleiche Aufgabe wie die letzten beiden, nur mit dem Unterschied, dass du sie mit einem FutureBuilder lösen sollst:

Erstelle einen `ElevatedButton` zum Werfen eines Würfels (D6).
Das Würfeln soll 2 Sekunden dauern. Während des Würfelns soll in einem Text-Widget unter dem Button "Würfel wird geworfen..." angezeigt werden.
Anschließend soll das Ergebnis des Würfelns im selben Text-Widget angezeigt werden.
Wenn ein Fehler auftritt, soll auch dieser im selben Text-Widget angezeigt werden.
Sorge dafür dass zufällig entschieden wird, ob ein Fehler auftritt oder nicht.
Löse diese Aufgabe mit einem FutureBuilder.""",
);

const TaskModel t_5_5_3_1 = TaskModel(
  chapter: 5,
  subChapter: 5,
  lesson: 3,
  taskNumber: 1,
  taskTitel: "Random User API",
  taskText:
      "Nutze die Random User API (https://randomuser.me/api), um einen zufälligen User zu laden. Speichere die Informationen zu Vornamen, Nachnamen und das Profilbild des Users in einem Objekt der Klasse `RandomUser`. Zeige einen `CircularProgressIndicator` während das Bild geladen wird. Mit einem Icon kannst du auf Fehler beim API Call reagieren.\n\nEin `IconButton` mit einem Refresh-Symbol löst dabei den API Call aus bzw. lädt einen neuen Random User herunter.\n\nTipp: Nutze die vorgegebene Methode `fetchRandomUser` in Kombination mit einem `FutureBuilder`.",
);
