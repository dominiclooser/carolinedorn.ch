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
- NPM installieren
- Wenn du im Projektordner bist: `npm install`
- `grunt stage` lädt die aktuelle Seite auf `stage.carolinedorn.ch`. 
- Nachdem du fertig mit deinen Änderungen bist (oder nach Zwischenschritten):
  ```
  git commit -am 'deine commit-message'.
  ```
- `git push` (pusht die aktuelle Version hoch auf den Server), auch wichtig!
