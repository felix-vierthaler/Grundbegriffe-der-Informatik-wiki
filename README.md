# Grundbegriffe der Informatik wiki

In dieser Repo befindet sich eine Sammlung aus Zusammenfassungen zur Vorlesung Grundbegriffe der Informatik aus dem WS2020/21. Bis jetzt sind es nur ein paar Themen, jedoch wird sicher noch mehr dazukommen. Mitarbeit ist erwünscht! Wenn du also lust hast deine Zusammenfassungen etc. hinzuzufügen, kannst du das gerne über einen Pull request machen!

## Aufbau

Die Eigentlichen Wiki Dateien sind Markdown files (.md), die dann von Pandoc in PDF und HTML umgewandelt werden können. Pandoc ermöglicht es, Latex in die Markdown files einzubetten. So können zum Beispiel große Formeln gut dargestellt werden.

## Statische Website

Aus den eigentlichen Files wird im buildprocess auch eine statische Website erstellt, die alle Dokumente per Links verbindet. Zur erstellung der HTML-dateien werden die Latex-Formeln in Mathjax umgewandelt.

