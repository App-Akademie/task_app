import 'package:task_app/private/config/assets.dart';
import 'package:task_app/private/features/tasks/models/task.dart';
import 'package:task_app/private/features/tasks/models/task_model.dart';
import 'package:task_app/tasks/task_list.dart';

const List<Task> globalTaskList = [
  ...chapter3TaskList,
  ...chapter4TaskList,
  ...chapter5TaskList,
  ...chapter6TaskList,
];

/// Reverse Number
const TaskModel t_3_3_8_1 = TaskModel(
  chapter: 3,
  subChapter: 3,
  lesson: 8,
  taskNumber: 1,
  taskTitel: "Reverse Number",
  taskText:
      """Erstelle eine Funktion, die eine gegebene Zahl umdreht. Die Funktion soll einen Parameter vom Typ `int` entgegennehmen und einen `int` zurückgeben. Die Funktion soll die Zahl umdrehen und zurückgeben.

Beispiel: 1234 → 4321

**Hinweis: Das UI ist bereits fertig implementiert. Du musst nur die Funktion `reverseNumber` implementieren.**""",
);

/// Prime Checker
const TaskModel t_3_3_8_2 = TaskModel(
  chapter: 3,
  subChapter: 3,
  lesson: 8,
  taskNumber: 2,
  taskTitel: "Prime Checker",
  taskText:
      """Erstelle eine Funktion, die überprüft, ob eine gegebene Zahl eine Primzahl ist.
Die Funktion soll einen Parameter vom Typ `int` entgegennehmen und einen `bool` zurückgeben.
Die Funktion soll `true` zurückgeben, wenn die Zahl eine Primzahl ist, ansonsten `false`.

**Hinweis 1: Das UI ist bereits fertig implementiert. Du musst nur die Funktion `isPrime` implementieren.**
**Hinweis 2: Weder 0 noch 1 sind Primzahlen**.
""",
);

/// Seconds Formatter
const TaskModel t_3_3_8_3 = TaskModel(
  chapter: 3,
  subChapter: 3,
  lesson: 8,
  taskNumber: 3,
  taskTitel: "Seconds Formatter",
  taskText:
      """Erstelle eine Funktion, die eine gegebene Anzahl an Sekunden in Stunden, Minuten und Sekunden umrechnet. 
Die Funktion soll einen Parameter vom Typ `int` entgegennehmen und einen `String` zurückgeben.
Die Funktion soll die Sekunden in Stunden, Minuten und Sekunden umrechnen und als String zurückgeben.

Beispiel: 12345 Sekunden → 3 Stunden, 25 Minuten, 45 Sekunden

**Hinweis: Das UI ist bereits fertig implementiert. Du musst nur die Funktion `formatSeconds` implementieren.**
""",
);

/// Vowel Counter
const TaskModel t_3_3_8_4 = TaskModel(
  chapter: 3,
  subChapter: 3,
  lesson: 8,
  taskNumber: 4,
  taskTitel: "Vowel Counter",
  taskText:
      """Erstelle eine Funktion, die die Anzahl der Vokale in einem gegebenen String zählt.
Die Funktion soll einen Parameter vom Typ `String` entgegennehmen und einen `int` zurückgeben.
Die Funktion soll die Anzahl der Vokale im String zählen und zurückgeben.

Beispiel: "Hallo Welt" → 3

**Hinweis: Das UI ist bereits fertig implementiert. Du musst nur die Funktion `countVowels` implementieren.**
""",
);

/// Palindrome Checker
const TaskModel t_3_3_8_5 = TaskModel(
  chapter: 3,
  subChapter: 3,
  lesson: 8,
  taskNumber: 5,
  taskTitel: "Palindrome Checker",
  taskText:
      """Erstelle eine Funktion, die überprüft, ob ein gegebener String ein Palindrom ist.
Die Funktion soll einen Parameter vom Typ `String` entgegennehmen und einen `bool` zurückgeben.
Die Funktion soll `true` zurückgeben, wenn der String ein Palindrom ist, ansonsten `false`.

Beispiel: "Anna" → true, "Hallo" → false

**Hinweis 1: Ein Palindrom ist ein Wort, das vorwärts und rückwärts gelesen das gleiche Wort ergibt.**
**Hinweis 2: Das UI ist bereits fertig implementiert. Du musst nur die Funktion `isPalindrome` implementieren.**
""",
);

/// Anagram Checker
const TaskModel t_3_3_8_6 = TaskModel(
  chapter: 3,
  subChapter: 3,
  lesson: 8,
  taskNumber: 6,
  taskTitel: "Anagram Checker",
  taskText:
      """Erstelle eine Funktion, die überprüft, ob ein gegebener String ein Anagramm ist.
Die Funktion soll zwei Parameter vom Typ `String` entgegennehmen und einen `bool` zurückgeben.
Die Funktion soll `true` zurückgeben, wenn die beiden Strings Anagramme sind, ansonsten `false`.

Beispiele: "Provider" und "Riverpod" → true, "Hallo" und "Welt" → false

**Hinweis 1: Ein Anagramm ist ein Wort, das durch Umstellen der Buchstaben eines anderen Wortes entsteht.**
**Hinweis 2: Das UI ist bereits fertig implementiert. Du musst nur die Funktion `isAnagram` implementieren.**
""",
);

/// PIN Hacker
const TaskModel t_3_3_8_7 = TaskModel(
  chapter: 3,
  subChapter: 3,
  lesson: 8,
  taskNumber: 7,
  taskTitel: "PIN Hacker",
  taskText:
      """Erstelle eine Funktion, die eine 4-stellige PIN hackt. Die Funktion soll einen `String` zurückgeben.
Die Funktion soll die PIN hacken und zurückgeben.
Nutze die vorgegeben Funktion `_isPinCorrect()` um zu überprüfen, ob die PIN korrekt ist.
Die Funktion `_isPinCorrect()` nimmt einen `String` entgegen und gibt einen `bool` zurück. Die Funktion `_isPinCorrect()` ist bereits fertig implementiert.

**Hinweis 1: Hacke die PIN mit einer Brute-Force-Attacke. Das heißt, probiere alle möglichen Kombinationen aus, bis du die richtigen PIN gefunden hast.**
**Hinweis 2: Die PIN ist eine 4-stellige Zahl.**
**Hinweis 3: Das UI ist bereits fertig implementiert. Du musst nur die Funktion `hackPin` implementieren.**
""",
);

/// Multiply Advanced
const TaskModel t_3_3_8_8 = TaskModel(
  chapter: 3,
  subChapter: 3,
  lesson: 8,
  taskNumber: 8,
  taskTitel: "Multiply Advanced",
  taskText:
      """Erstelle eine Funktion, die 2 gegebene Zahlen miteinander multipliziert. 
Du darfst dabei jedoch nicht den Operator der Multiplikation verwenden (`*`).

**Hinweis: Das UI ist bereits fertig implementiert. Du musst nur die Funktion `multiplyAdvanced` implementieren.**
""",
);

/// Hello World
const TaskModel t_4_5_1_1 = TaskModel(
    chapter: 4,
    subChapter: 5,
    lesson: 1,
    taskNumber: 1,
    taskTitel: "Hello World",
    taskText:
        """Implementiere ein neues StatelessWidget "HelloWorld", das ein `Hello World`-Text-Widget enthält und in dem bereits vorhandenen StatelessWidget verwendet wird.""");

/// Hello World (zentriert)
const TaskModel t_4_5_2_1 = TaskModel(
    chapter: 4,
    subChapter: 5,
    lesson: 2,
    taskNumber: 1,
    taskTitel: "Hello World (zentriert)",
    taskText:
        """Erstelle ein neues StatelessWidget, das ein `Center`-Widget mit einem zentrierten `Hello World`-Text-Widget anzeigt und in dem bereits vorhandenen StatelessWidget verwendet wird.""");

/// Hello Name!
const TaskModel t_4_5_2_2 = TaskModel(
  chapter: 4,
  subChapter: 5,
  lesson: 2,
  taskNumber: 2,
  taskTitel: "Hello Name!",
  taskText:
      """Erstelle ein StatelessWidget mit dem Namen `MyStatelessWidget`, das einen `Text` und einen `ElevatedButton` enthält.
Positioniere den Text oberhalb des Buttons. Der Button soll die Beschriftung `Klick mich` haben, und der Text des Text-Widgets soll `Hello [Dein Name]` lauten (ersetze [Dein Name] mit deinem eigenen Namen).

**Hinweis: Der Button muss erstmal noch nicht auf einen Klick reagieren.**""",
);

/// Show Name Button
const TaskModel t_4_5_2_3 = TaskModel(
  chapter: 4,
  subChapter: 5,
  lesson: 2,
  taskNumber: 3,
  taskTitel: "Show Name Button",
  taskText:
      """Erstelle ein StatefulWidget mit dem Namen `MyNameWidget`. Der Zustand (State) des Widgets soll anfangs ein leerer String sein.
Integriere ein `Text`-Widget und einen `ElevatedButton` in das UI. Das `Text`-Widget zeigt den aktuellen State an (zu Beginn also einen leeren String).
Der Button soll mit `Name anzeigen` beschriftet sein. Bei einem Klick auf den Button soll der State auf deinen Namen gesetzt werden, und der neue State soll im `Text`-Widget dargestellt werden.""",
);

/// Show / hide Name Button
const TaskModel t_4_5_2_4 = TaskModel(
  chapter: 4,
  subChapter: 5,
  lesson: 2,
  taskNumber: 4,
  taskTitel: "Show / hide Name Button",
  taskText: """Erstelle ein StatefulWidget mit dem Namen `ShowHideNameWidget`. 
Der Zustand (State) des Widgets soll aus 2 Strings bestehen. Ein leerer `String` für den Namen sein und ein `String` für den Text des Buttons.
Integriere ein `Text`-Widget und einen `ElevatedButton` in das UI. Das `Text`-Widget zeigt den aktuellen State an (zu Beginn also einen leeren String).
Der Button soll am Anfang mit `Name anzeigen` beschriftet sein. Bei einem Klick auf den Button soll der State auf deinen Namen gesetzt werden, und der neue State soll im Text-Widget dargestellt werden.
Wenn der Name angezeigt wird, soll der gleiche Button den Text `Name verstecken` haben.
Klickt man jetzt auf den Button, soll der Name wieder verschwinden.
Der Name soll also beliebig oft angezeigt und versteckt werden können.""", //da
);

/// Blue Containers
const TaskModel t_4_5_3_1 = TaskModel(
  chapter: 4,
  subChapter: 5,
  lesson: 3,
  taskNumber: 1,
  taskTitel: "Blue Containers",
  taskText: """Erstelle eine `Column`, die drei `Container`-Widgets enthält.
Jeder `Container` soll eine Höhe und Breite von 100 haben.
Färbe den ersten Container `blueGrey`, den zweiten `blue` und den dritten `cyan`.""", //da
);

/// Text Styles
const TaskModel t_4_5_3_2 = TaskModel(
  chapter: 4,
  subChapter: 5,
  lesson: 3,
  taskNumber: 2,
  taskTitel: "Text Styles",
  taskText:
      """Erstelle eine `Column`, die drei `Text`-Widgets enthält, alle mit dem Text `App Akademie`.
Das erste `Text`-Widget soll keinen `style`-Parameter haben.
Das zweite `Text`-Widget soll eine Schriftgröße von 16 haben, fett und blau sein.
Das dritte `Text`-Widget soll eine Schriftgröße von 10 haben, kursiv (italic) und grün sein.""", //da
);

/// Center in Column
const TaskModel t_4_5_3_3 = TaskModel(
  chapter: 4,
  subChapter: 5,
  lesson: 3,
  taskNumber: 3,
  taskTitel: "Center in Column",
  taskText: """Erstelle einen blauen `Container` mit den Abmessungen 150 x 150.
Integriere darin eine `Column` mit zwei `Text`-Elementen: `App` und `Akademie`.
Zentriere beide Texte innerhalb des Containers.""", //da
);

/// Space in Row
const TaskModel t_4_5_3_4 = TaskModel(
  chapter: 4,
  subChapter: 5,
  lesson: 3,
  taskNumber: 4,
  taskTitel: "Space in Row",
  taskText:
      """Erstelle eine `Row` mit zwei `Text`-Elementen: `App` und `Akademie`.
Sorge für einen Abstand von 64 Einheiten zwischen den beiden Texten, ohne dafür einen `Container` zu verwenden.""", //da
);

/// Colorful Rectangle
const TaskModel t_4_5_3_5 = TaskModel(
  chapter: 4,
  subChapter: 5,
  lesson: 3,
  taskNumber: 5,
  taskTitel: "Colorful Rectangle",
  taskText:
      """Verwende `Column`, `Row` und `Container` Widgets, um das im Bild dargestellte Ergebnis nachzubauen.
Nutze Container der Größe 100 x 100.""", //da
  taskImagePath: Assets.taskAsset4543,
);

/// Shopping List
const TaskModel t_4_5_3_6 = TaskModel(
  chapter: 4,
  subChapter: 5,
  lesson: 3,
  taskNumber: 6,
  taskTitel: "Shopping List",
  taskText:
      """Erstelle eine Klasse `Product` mit den Attributen `name` und `price`.
Anschließend generiere eine Liste von mindestens fünf solchen Produkten.
Implementiere dann eine `ListView`, die diese Produkte auflistet. Jedes Listenelement (vom Typ `ListTile`) in der `ListView` sollte den Namen und den Preis des jeweiligen Produkts enthalten und auf der linken Seite ein Einkaufswagen-Icon haben.

**Hinweis: Verwende `shrinkWrap: true` in der `ListView`**.""", //da
);

/// Styling Impacts
const TaskModel t_5_1_1_1 = TaskModel(
  chapter: 5,
  subChapter: 1,
  lesson: 1,
  taskNumber: 1,
  taskTitel: "Styling Impacts",
  taskText:
      """Rekonstruiere den Screen aus dem `Arbeitsblatt 5.1.1 (Aufgabe 1)` und integriere die von dir identifizierten Einflüsse auf das Aussehen einer App.
      
      **Hinweis: Du brauchst kein Scaffold-Widget, da die Task App selbst bereits ein Scaffold mit AppBar bereitstellt.**""", //da
  taskImagePath: Assets.taskAsset5111,
);

/// Style a Llama
const TaskModel t_5_1_1_2 = TaskModel(
  chapter: 5,
  subChapter: 1,
  lesson: 1,
  taskNumber: 2,
  taskTitel: "Style a Llama",
  taskText:
      """Rekonstruiere den Screen mit dem Lama aus dem `Arbeitsblatt 5.1.1 (Aufgabe 2)`.
Nutze dazu ein beliebiges Bild eines Lamas, sowie beliebige Daten für den Steckbrief.
Erstelle eine separate `styles`-Datei, in der du Konstanten für die Textstile und Abstände definierst.
Verwende diese Konstanten dann in deinem Code, um Code-Duplikate zu vermeiden.""", //da
  taskImagePath: Assets.taskAsset5112,
);

/// Very own Material Button
const TaskModel t_5_1_1_3 = TaskModel(
  chapter: 5,
  subChapter: 1,
  lesson: 1,
  taskNumber: 3,
  taskTitel: "Very own Material Button",
  taskText:
      """Baue einen `MaterialButton` in Flutter mit eigenen Widgets und Attributen (`Container`, `Text`, …) nach.
Erstelle dazu ein Widget namens `CustomMaterialButton` innerhalb deine Solution Datei.
Achte vor allem auf die abgerundeten Ecken, den Schatten sowie die Interaktivität.

Bonus: Stelle sogar den `Ripple`-Effekt des Buttons bei Berührung nach.

**Hinweis: Benutze die Widgets `Container`, `Text`, `GestureDetector`, `InkWell`, `BoxDecoration`, `TextStyle`, …**""", //da
);

/// Animated Text
const TaskModel t_5_1_1_4 = TaskModel(
  chapter: 5,
  subChapter: 1,
  lesson: 1,
  taskNumber: 4,
  taskTitel: "Animated Text",
  taskText:
      """Erstelle eine animierte Schriftgrößenänderung eines Text-Widgets mit dem Text `Hello, App Akademie!`
Die `fontSize` soll sich dabei innerhalb von 3 Sekunden von 20 auf 30 ändern.
**Hinweis: Nutze dazu das `AnimatedBuilder` Widget.**""",
);

/// Google Fonts
const TaskModel t_5_1_3_1 = TaskModel(
  chapter: 5,
  subChapter: 1,
  lesson: 3,
  taskNumber: 1,
  taskTitel: "Google Fonts",
  taskText:
      """Wähle 4 beliebige Schriftarten aus `Google Fonts` aus und integriere sie.
Ordne 4 `Text`-Widgets vertikal untereinander an und weise jedem `Text`-Widget eine der Schriftarten zu.""",
);

/// Fold / Unfold Text
const TaskModel t_5_1_3_2 = TaskModel(
  chapter: 5,
  subChapter: 1,
  lesson: 3,
  taskNumber: 2,
  taskTitel: "Fold / Unfold Text",
  taskText:
      """Erstelle ein `Text`-Widget in einer `SizedBox`, die 200px breit und 30px hoch ist.
Der Text sollte länger als die Box sein und deshalb nach unten hin den überlaufenden Text ausblenden.
Integriere die Funktionalität, dass der Text sich bei einem Klick darauf ausklappt.""", //da
);

/// Box Decoration
const TaskModel t_5_1_3_3 = TaskModel(
  chapter: 5,
  subChapter: 1,
  lesson: 3,
  taskNumber: 3,
  taskTitel: "Box Decoration",
  taskText:
      """Erstelle einen stilvollen `Container` mit einem Schatten, abgerundeten Ecken, Innenabstand, Hintergrundfarbe und einem Text-Inhalt.""", //da
);

/// Simple Image Asset
const TaskModel t_5_3_1_1 = TaskModel(
  chapter: 5,
  subChapter: 3,
  lesson: 1,
  taskNumber: 1,
  taskTitel: "Simple Image Asset",
  taskText:
      """Lade dir ein Bild auf deinen Computer herunter und füge es als Asset in diese App ein.
Erstelle im Anschluss ein Widget, um das Bild anzuzeigen.""", //da
);

/// Image from Network
const TaskModel t_5_3_1_2 = TaskModel(
  chapter: 5,
  subChapter: 3,
  lesson: 1,
  taskNumber: 2,
  taskTitel: "Image from Network",
  taskText:
      """Suche ein beliebiges Bild aus dem Internet und zeige es hier mittels der URL an.""", //da
);

/// Cached Network Image
const TaskModel t_5_3_1_3 = TaskModel(
  chapter: 5,
  subChapter: 3,
  lesson: 1,
  taskNumber: 3,
  taskTitel: "Cached Network Image",
  taskText:
      """Füge das Package `cached_network_image` zur App hinzu und nutze das `CachedNetworkImage` Widget, um ein Bild aus dem Internet anzuzeigen.
Teste anschließend, ob das Bild auch offline angezeigt wird.""", //da
);

/// Progress Indicator
const TaskModel t_5_3_2_1 = TaskModel(
  chapter: 5,
  subChapter: 3,
  lesson: 2,
  taskNumber: 1,
  taskTitel: "Progress Indicator",
  taskText:
      """Nutze ein `CachedNetworkImage` Widget, um ein Bild aus dem Internet anzuzeigen.
Zeige während des Ladevorgangs einen `CircularProgressIndicator`. Dabei soll der Progress Indicator den aktuellen Fortschritt anzeigen.""", //da
);

/// Error Image
const TaskModel t_5_3_2_2 = TaskModel(
  chapter: 5,
  subChapter: 3,
  lesson: 2,
  taskNumber: 2,
  taskTitel: "Error Image",
  taskText:
      """Nutze ein `CachedNetworkImage` Widget, um ein Bild aus dem Internet anzuzeigen.
Zeige bei einem Fehler ein alternatives Bild, einen `Text` oder ein `Icon` an.""", //da
);

/// Shimmer Placeholder
const TaskModel t_5_3_2_3 = TaskModel(
  chapter: 5,
  subChapter: 3,
  lesson: 2,
  taskNumber: 3,
  taskTitel: "Shimmer Placeholder",
  taskText:
      """Nutze ein `CachedNetworkImage` Widget, um ein Bild aus dem Internet anzuzeigen.
Zeige während des Ladevorgangs einen `Shimmer Effect` an.""", //da
);

/// Thumbnail Image
const TaskModel t_5_3_2_4 = TaskModel(
  chapter: 5,
  subChapter: 3,
  lesson: 2,
  taskNumber: 4,
  taskTitel: "Thumbnail Image",
  taskText:
      """Nutze ein `CachedNetworkImage` Widget, um ein Bild aus dem Internet anzuzeigen.
Zeige während des Ladevorgangs ein `Thumbnail` an.""", //da
);

/// Camera & Gallery
const TaskModel t_5_3_3_1 = TaskModel(
  chapter: 5,
  subChapter: 3,
  lesson: 3,
  taskNumber: 1,
  taskTitel: "Camera & Gallery",
  taskText:
      """Erstelle 2 `IconButtons`, die jeweils die Kamera und die Galerie öffnen.
Wähle entweder ein Bild aus der Galerie aus oder erstelle ein neues Bild mit der Kamera und zeige es anschließend unterhalb der `IconButtons` an.\nWenn erneut auf einen der IconButtons geklickt wird, soll das Bild aktualisiert werden.""", //da
);

/// Multiple Images
const TaskModel t_5_3_3_2 = TaskModel(
  chapter: 5,
  subChapter: 3,
  lesson: 3,
  taskNumber: 2,
  taskTitel: "Multiple Images",
  taskText: """Erstelle einen `IconButton`, der die Galerie öffnet. 
Wähle mehrere Bilder aus der Galerie aus und zeige sie anschließend untereinander in einer `ListView` an.

Bonus: Wennn du auf eines der Bilder klickst, soll es aus der Liste entfernt werden.""", //da
);

/// Try Catch
const TaskModel t_5_4_1_1 = TaskModel(
  chapter: 5,
  subChapter: 4,
  lesson: 1,
  taskNumber: 1,
  taskTitel: "Try Catch",
  taskText:
      """Zeige einen `ElevatedButton` mit beliebigem Text. Sorge dafür, dass das Klicken des Buttons einen Fehler erzeugt.
Dabei soll es sich um einen Laufzeitfehler handeln, damit deine App überhaupt gebaut werden kann.

Drücke den Button und schaue in der Debug Console, ob tatsächlich ein Fehler ausgegeben wird.
Fange den Fehler jetzt mit einem `try-catch`-Block ab und gib den Fehler in einer `SnackBar` aus.

**Hinweis: Du kannst einen Fehler z.B. mit `throw Exception('[dein Exception-Name]')` erzeugen.**""", //da
);

/// Index Exception
const TaskModel t_5_4_2_1 = TaskModel(
  chapter: 5,
  subChapter: 4,
  lesson: 2,
  taskNumber: 1,
  taskTitel: "Index Exception",
  taskText:
      """Erstelle eine Liste mit mindestens 5 Begriffen aus einer Kategorie deiner Wahl und zeige diese in einem `ListView` an.
Unter dem `ListView` platziere ein `TextField` zur Eingabe eines Listenindex (z.B. 0 oder 4).

Bei Änderungen im Textfeld soll der entsprechende Eintrag im `ListView` blau markiert (`tileColor`) werden.
Bei einer ungültigen Eingabe soll eine Fehlermeldung in Form einer `SnackBar` angezeigt werden.

Die Fehlermeldung soll je nach Eingabefehler entweder `Index außerhalb des Bereichs` oder `Keine gültige Zahl` lauten.
Alle anderen Fehler sollen nur in der Console geloggt werden.
Egal welcher Fehler nun auftritt: Die farbliche Markierung soll im `ListView` entfernt werden.""", //da
);

/// Custom Exception
const TaskModel t_5_4_2_2 = TaskModel(
  chapter: 5,
  subChapter: 4,
  lesson: 2,
  taskNumber: 2,
  taskTitel: "Custom Exception",
  taskText:
      """Erstelle ein `TextField` für das Alter des Users und darunter einen `TextButton`.
Bei einem Klick auf den Button soll das Alter des Users in eine Zahl umgewandelt werden.
Dabei kann es zu einem Fehler kommen, wenn der User einen ungültigen Wert eingibt.
Gib in diesem Fall die Fehlermeldung `Ungültiges Alter` in einer `SnackBar` aus.

Das eingegebene Alter soll größer als 0 und kleiner als 100 sein.
Ist das Alter <= 0 oder >= 100, soll eine `AgeException` geworfen werden.
Fange diese Exception ab und gib die Fehlermeldung `Alter muss zwischen 0 und 100 liegen` in einer `SnackBar` aus.

Wenn das Alter passt, gib das Alter in einer `Snackbar` aus!

**Tipp: Erstelle eine eigene Exception-Klasse `AgeException`, die `Exception` implementiert.**""", //da
);

// Async Methods
const t_5_5_1_1 = TaskModel(
  chapter: 5,
  subChapter: 5,
  lesson: 1,
  taskNumber: 1,
  taskTitel: "Async Methods",
  taskText:
      """Erstelle einen `ElevatedButton`, der bei einem Klick zwei asynchrone Methoden aufruft und anschließend `Fertig` in der Konsole ausgibt.
Beide Methoden inkrementieren einen separaten Zähler, der bei 0 startet und schreiben danach ihren Methoden-Name in die Konsole.
Gib die Werte der Zähler jeweils in einem `Text`-Widget an.

Teste den Button und beobachte die Ausgabe in der Konsole.

Schreibe jetzt `await warteKurz();` an den Anfang deiner beiden Methoden.
Teste den Button jetzt erneut und beobachte die Ausgabe in der Konsole.
Was fällt dir auf? Warum ist das so?""", //da
);

/// Async Progress Bar
const TaskModel t_5_5_2_1 = TaskModel(
  chapter: 5,
  subChapter: 5,
  lesson: 2,
  taskNumber: 1,
  taskTitel: "Async Progress Bar",
  taskText:
      """Erstelle einen `ElevatedButton` unterhalb eines `LinearProgressIndicator`, der den Fortschritt einer asynchronen Operation anzeigt.
Die `ProgressBar` soll am Anfang leer sein und sich nach Klicken des Buttons innerhalb von 3 Sekunden auffüllen.

Bonus: Umrande die `ProgressBar`, sodass sie auch leer sichtbar ist.
Bonus 2: Ein erneutes Klicken während der asynchronen Operation soll keine Auswirkung haben.
Bonus 3: Zeige den aktuellen Fortschritt innerhalb der Fortschrittsanzeige in Prozent an (Tipp: `Stack`-Widget).

**Tipp: Du musst hier nicht auf das `Future` warten.**""", //da
);

/// Roll the Dice!
const TaskModel t_5_5_2_2 = TaskModel(
  chapter: 5,
  subChapter: 5,
  lesson: 2,
  taskNumber: 2,
  taskTitel: "Roll the Dice! (.then)",
  taskText: """Erstelle einen `ElevatedButton` zum Werfen eines Würfels (D6).
Das Würfeln soll 2 Sekunden dauern. Während des Würfelns soll in einem `Text`-Widget unter dem Button `Würfel wird geworfen...` angezeigt werden.
Anschließend soll das Ergebnis des Würfelns im selben `Text`-Widget angezeigt werden.
Wenn ein Fehler auftritt, soll auch dieser im selben `Text`-Widget angezeigt werden.
Sorge dafür, dass zufällig entschieden wird, ob ein Fehler auftritt oder nicht.
Löse diese Aufgabe nur mit `.then` und `.catchError`.""",
);

/// Roll the Dice! (try-catch)
const TaskModel t_5_5_2_3 = TaskModel(
  chapter: 5,
  subChapter: 5,
  lesson: 2,
  taskNumber: 3,
  taskTitel: "Roll the Dice! (try-catch)",
  taskText: """
Das ist die gleiche Aufgabe wie davor, nur mit dem Unterschied, dass du sie mit einem try-catch-Block lösen sollst:

Erstelle einen `ElevatedButton` zum Werfen eines Würfels (D6).
Das Würfeln soll 2 Sekunden dauern. Während des Würfelns soll in einem `Text`-Widget unter dem Button `Würfel wird geworfen...` angezeigt werden.
Anschließend soll das Ergebnis des Würfelns im selben `Text`-Widget angezeigt werden.
Wenn ein Fehler auftritt, soll auch dieser im selben `Text`-Widget angezeigt werden.
Sorge dafür dass zufällig entschieden wird, ob ein Fehler auftritt oder nicht.
Löse diese Aufgabe mit einem `async-await` und einem `try-catch`-Block.""",
);

/// Roll the Dice! (FutureBuilder)
const TaskModel t_5_5_2_4 = TaskModel(
  chapter: 5,
  subChapter: 5,
  lesson: 2,
  taskNumber: 4,
  taskTitel: "Roll the Dice! (FutureBuilder)",
  taskText: """
Das ist die gleiche Aufgabe wie die letzten beiden, nur mit dem Unterschied, dass du sie mit einem FutureBuilder lösen sollst:

Erstelle einen `ElevatedButton` zum Werfen eines Würfels (D6).
Das Würfeln soll 2 Sekunden dauern. Während des Würfelns soll in einem `Text`-Widget unter dem Button `Würfel wird geworfen...` angezeigt werden.
Anschließend soll das Ergebnis des Würfelns im selben `Text`-Widget angezeigt werden.
Wenn ein Fehler auftritt, soll auch dieser im selben `Text`-Widget angezeigt werden.
Sorge dafür dass zufällig entschieden wird, ob ein Fehler auftritt oder nicht.
Löse diese Aufgabe mit einem `FutureBuilder`.""",
);

/// Random User API
const TaskModel t_5_5_3_1 = TaskModel(
  chapter: 5,
  subChapter: 5,
  lesson: 3,
  taskNumber: 1,
  taskTitel: "Random User API",
  taskText:
      """Nutze die Random User API (https://randomuser.me/api), um einen zufälligen User zu laden.
Speichere die Informationen zu Vornamen, Nachnamen und das Profilbild des Users in einem Objekt der Klasse `RandomUser`.
Zeige einen `CircularProgressIndicator` während das Bild geladen wird. Mit einem Icon kannst du auf Fehler beim API Call reagieren.

Ein `IconButton` mit einem Refresh-Symbol löst dabei den API Call aus bzw. lädt einen neuen Random User herunter.

**Tipp: Nutze die vorgegebene Methode `fetchRandomUser` in Kombination mit einem `FutureBuilder`.**""", //da
);
