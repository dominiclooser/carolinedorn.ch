# Was du installiert haben musst
- Git
- npm/node
- harp und grunt durch `npm install` im Projektordner
- publication import Script mit `pip install pubimport`

# Git-Repo runterladen
- Benutzerkonto auf Github eröffnen (falls noch nicht vorhanden)
- Benutzername mir mitteilen, damit ich dir das Repository freischalten kann
- Git installieren
- SSH-Keys einrichten. siehe hier: https://help.github.com/articles/which-remote-url-should-i-use/ 
- Repository runterladen mit 
```
git clone git@github.com:dominiclooser/carolinedorn.ch.git
```
- Jetzt sollte das ganze Projekt im Ordner `carolinedorn.ch` sein

# Änderungen
- Wir arbeiten immer im Branch `develop`. Falls du im Branch `master` bist, kommst du mit
  `git checkout develop` in den `develop`-Branch.
- `git pull` (wichtig!) Damit du die aktuelle Version hast.
- Änderungen an einzelnen Dateien wie z.B. harp.yml

- Nachdem du fertig mit deinen Änderungen bist (oder nach Zwischenschritten):
  ```
  git commit -am 'deine commit-message'.
  ```
- `git push` (pusht die aktuelle Version hoch auf den Server), auch wichtig!

# Dein Content
Grundsätzlich kannst du Content in Markdown-Dateien (*.md) und YAML-Dateien (*.yml) editieren. 
- `harp.yml`: Globale Einstellungen, Navigation
- `_data.yml`: Metadaten zu Seiten in diesem Ornder
- `cards/*.md`: Blocks/Cards
- `intro.md`: Seiten-Intro
- `raw-images`: Bilder (werden automatisch verkleinert)
- doppelte Cards: Falls du zwei mal denselben Block(Card) hast, würde ich nur einen erstellen und mit symbolic links verknüpfen

# Lokaler Server
Wenn du deine Seite lokal anschauen willst: 
- `npx grunt` kompiliert laufend deine Seite
- `npx harp server` lässt einen lokalen Server laufen.
Die Seite ist dann auf localhost:9000 im Browser.
- Ich würde grunt und harp in zwei verschiedenen Tabs in der Konsole laufen lassen.

# Staging
- `npx grunt stage` lädt die aktuelle Seite auf `stage.carolinedorn.ch`. 


npx grunt responsive_images

# Publications
- Neue bibtext-Files im Ordner Publications sollten automatisch importiert werden. Falls das nicht klappt:
  `npx grunt exec:pubimport` macht das manuell

