# Was du installiert haben musst
- Git
- npm/node
- harp und grunt durch `npm install` im Projektordner

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
- harp.yml
- public/_data.yml
- public/content
- public/research/_data.yml
- raw-images (die werden automatisch verkleinert)

# Lokaler Server
Wenn du deine Seite lokal anschauen willst: 
- `npx grunt` kompiliert laufend deine Seite
- `npx harp server` lässt einen lokalen Server laufen.
Die Seite ist dann auf localhost:9000 im Browser.
- Ich würde grunt und harp in zwei verschiedenen Tabs in der Konsole laufen lassen.

# Staging
- `npx grunt stage` lädt die aktuelle Seite auf `stage.carolinedorn.ch`. 