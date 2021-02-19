---
title: "Graphen Zusammenfassung"
lang: "de"
header-includes: |
    \usepackage{amsfonts}
...




## Gerichtete Graphen

**gerichteter Graph:** ein Paar $(V,E)$ wobei $E \subseteq V \times V$ ist.

**Knoten:** Die Elemente in V heißen Knoten. (nicht leer und endlich)

**Kanten:** die Elemente in E heißen Kanten. (darf leer sein)

**Adjazente Knoten:** Die Knoten X und Y sind adjazent wenn $(X,Y) \in E$. (nicht symmetrisch)

**Schlinge:** Eine Kante bei der Start und Zielknoten gleich ist.

**Schlingenfrei:** Wenn ein Graph keine Schlinge beinhaltet.

**Teilgraph:** $G'=(V',E')$ ist ein Teilgraph von $G=(V,E)$, wenn $V' \subseteq V$ und $E' \subseteq E \cap V' \times V'$

**Pfad:** eine nichtleere Liste $p=(v_0,\dots,v_n) \in V^{(+)}$ von Knoten ist ein Pfad in einem gerichteten Graphen $G=(V,E)$, wenn für alle $i \in \mathbb{Z}_n$ gilt: $(v,v_{i+1}) \in E$. 

Dabei ist $|p|-1$ die *Länge* eines Pfades.

Man sagt auch dass $v_n$ von $v_0$ *erreichbar* ist.

**Teilpfad:** ein Pfad bei dem von beiden Seiten beliebig viele Knoten entfernt wurden.

**widerholungsfreier Pfad:** ein Pfad, bei dem die Knoten $v_0,\dots,v_n$ und die Knoten $v_1,\dots,v_{n-1}$ jeweils  paarweise verschieden sind.

**geschlossener Pfad:** ein Pfad mit $v_0=v_n$.

**Zyklus:** ein geschlossener Pfad mit $n \geq 1$

**einfacher Zyklus:** Ein Zyklus der *wiederholungsfrei* ist.

**streng zusammenhängend:** Ein gerichteter Graph, in dem es für jedes Knotenpaar $(x,y) \in V^2$ einen Pfad von x nach y gibt. (genau dann wenn $E^* = V \times V$)

**Gerichteter Baum:** ein Graph, in dem es einen Knoten  $r \in V$ gibt, von dem es jeweils genau einen Pfad zu allen anderen Knoten gibt. ($r$ ist dabei eindeutig)

**Wurzel:** $r$ wird auch Wurzel genannt

**Grad:** Eingangsgrad + Ausgangsgrad

- **Eingangsgrad:** $d^-(y) = |\{x\,|\,(x,y) \in E\}|\,$ (Anzahl der eingehenden Kanten)

- **Ausgangsgrad:** $d^+(y) = |\{y\,|\,(x,y) \in E\}|\,$ (Anzahl der ausgehenden Kanten)

**Isomorphie von Graphen:** zwei Graphen $G_1=(V_1,E_1)$ und $G_2=(V_2,E_2)$ sind isomorph, wenn es eine bijektive Abbildung $\varphi:V_1 \longrightarrow V_2$ gibt, mit der Eigenschaft: 

$\forall x \in V_1: \forall y \in V_1: (x,y) \in E_1 \iff ( \varphi(x),\varphi(y)) \in E_2$ (Äquivalenzrelation)




## Ungerichtete Graphen

**Ungerichteter Graph:** Im gegensatz zu gerichteten Graphen ein Paar $(V,E)$ wobei $E \subseteq \{ \{x,y\} \,|\, x \in V und \, y \in V \}$ ist.

**Adjazente Knoten:** zwei Knoten sind adjazent, wenn sie mit einer Kante miteinander verbunden sind.

**Schlinge:** Eine Kante bei der Start und Zielknoten gleich ist. Formal: $\{x,y\}=\{x\}$

**Schlingenfrei:** Wenn ein Graph keine Schlinge beinhaltet.

**Teilgraph:** $G'=(V',E')$ ist ein Teilgraph von $G=(V,E)$, wenn $V' \subseteq V$ und $E' \subseteq E \cap \{ \{x,y\} \,|\, x \in V und \, y \in V \}$

**Weg:** eine nichtleere Liste $p=(v_0,\dots,v_1) \in V^{(+)}$ von Knoten ist ein Weg, wenn für alle $i \in \mathbb{Z}_n$ gilt: $\{v_i,v_{i+1}\} \in E$.

Dabei ist $|p|-1$ die *Länge* eines Pfades.


**zu ungerichtetem Graphen gehöriger gerichteter Graph:** sei $G=(V,E)$ ein gerichteter Graph. Dann ist $(V,E_g)$ der dazugehörige ungerichtete Graph mit $E_g = \{(x,y) \,|\, \{x,y\} \in E\} \in V \times V$.

("pro Kante jeweils einen Pfeil in beide richtungen")

**zusammenhängend:** wenn der zugehörige Gerichtete Graph streng zusammenhängen ist.

**isomorph:** zwei ungerichtete Graphen sind isomoroph, wenn die dazugehörigen gerichteten Graphen isomorph zueinander sind. (Äquivalenzrelation)

$\forall x \in V_1: \forall y \in V_1: \{x,y\} \in E_1 \iff \{ \varphi(x),\varphi(y)\} \in E_2$

**zu gerichtetem Graph gehöriger ungerichteter Graph:** sei $G=(V,E)$ ein ungerichteter Graph. Dann ist $(V,E_u)$ der dazugehörige gerichtete Graph mit $E_u = \{\{x,y\} \,|\, (x,y) \in E\}$.

("entfernen aller Pfeilspitzen")

**ungerichteter Baum:** Ein ungerichteter Graph $G$ ist ein ungerichteter Baum, wenn es einen gerichteten Baum $B$ gibt, so dass der zu $B$ gehörige ungerichtete Graph gleich $G$ ist.

**Grad:**
$$ f(n) = d(x)=|\{y\,|\,y \ne x \wedge \{x,y\} \in E\}|+
  \begin{cases}
    2   &  falls \{x,x\} \in E\\
    0   &  sonst 
  \end{cases}
$$
("Anzahl der verbunden Knoten und +2, falls eine verbindung zu sich selbst besteht")




\newpage
## Algorithmen in Graphen

**Adjazenzmatrix (gerichteter Graph):** eine $n \times n$ Matrix $A$ mit der Eigenschaft:

(gibt an, welche Knoten adjazent zueinander sind)
$A_{ij} = \begin{cases} 1 & falls (i,j) \in E\\ 0 & falls (i,j) \notin E \end{cases}$

**Adjazenzmatrix (ungerichteter Graph):** Adjazenzmatrix des dazugehörigen gerichteten Graphen.

**Wegematrix:** eine $n \times n$ Matrix $A$ mit der Eigenschaft:

(gibt an, zwischen welchen Knoten es Wege gibt)
$A_{ij} = \begin{cases} 1 & falls (i,j) \in E^*\\ 0 & falls (i,j) \notin E^* \end{cases}$

**Berechnung der Wegematrix:** sei G ein gerichteter Graph mit Adjazenzmatrix A.

sei $k \geq n-1$, dann ist $W = sgn(\sum_{i=0}^{k} A^i)$ die Wegematrix von G, die $E^*$ representiert.


