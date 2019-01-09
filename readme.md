- Benutzerkonto auf Github eröffnen (falls noch nicht vorhanden)
- Benutzername mir mitteilen, damit ich dir das Repository freischalten kann
- Git installieren
- ssh keys einrichten. siehe hier: https://help.github.com/articles/which-remote-url-should-i-use/ 
- Repository runterladen mit git clone git@github.com:dominiclooser/carolinedorn.ch.git
- Jetzt sollte das ganze Projekt im Ordner carolinedorn.ch sein

Wir arbeiten immer im Branch 'develop'. Falls du im Branch 'master' bist, kommst du mit
git checkout develop in den develop-Branch.

# Änderungen
- git pull (wichtig!) Damit du die aktuelle Version hast.
- Änderungen an einzelnen Dateien wie z.B. harp.yml
- npm installieren
- wenn du im Projektordner bist: npm install
- 'grunt stage' lädt die aktuelle Seite auf stage.carolinedorn.ch. 
- Nachdem du fertig mit deinen Änderungen bist (oder nach Zwischenschritten):
  git commit -am 'deine commit-message'.
  commit message z.B. Text bei Nonacademit überarbeitet
- git push (pusht die aktuelle Version hoch auf den Server), auch wichtig!
