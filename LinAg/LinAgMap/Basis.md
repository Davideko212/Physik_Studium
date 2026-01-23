Eine [[Menge]] $B = \{\textbf{b}_1, \dots, \textbf{b}_n\}$ heißt eine Basis eines [[Vektorraum|Vektorraums]] $\mathcal{V}$, wenn gilt:
1) Die [[Vektor|Vektoren]] $\textbf{b}_1, \dots, \textbf{b}_n$ sind [[Lineare Unabhängigkeit|linear unabhängig]]
2) Der [[Vektorraum]] $\mathcal{V}$ wird durch die [[Lineare Hülle]] $\mathcal{L}(\textbf{b}_1, \dots, \textbf{b}_n)$ aufgespannt. (d.h. $\mathcal{V} = \mathcal{L}(\textbf{b}_1, \dots, \textbf{b}_n)$)

Es lässt sich jeder [[Vektor]] $\textbf{v} \in \mathcal{V}$ auf eindeutige Weise als [[Linearkombination]] der Basisvektoren darstellen:
$$\textbf{v} = \sum_{i=1}^n s_{i} \textbf{b}_{i}$$
(d.h. die [[Skalar|Skalare]] $s_1, \dots, s_n$ sind eindeutig bestimmt)

Die Basis eines [[Vektorraum|Vektorraums]] ist selbst nicht eindeutig bestimmt, denn ein [[Vektorraum]] hat im Allgemeinen unendlich viele unterschiedliche Basen. Dennoch enthalten alle Basen eines [[Vektorraum|Vektorraums]] dieselbe Anzahl der [[Vektor|Vektoren]].

Die [[Kardinalität]] einer Basis der [[Vektorraum|Vektorraums]] $\mathcal{V}$ wird als [[Dimension]] des [[Vektorraum|Vektorraums]] $\mathcal{V}$ und als $dim(\mathcal{V})$ notiert.

Folgende Aussagen sind äquivalent:
- $B$ ist eine [[Basis]] vom [[Vektorraum]] $\mathcal{V}$
- $B$ ist ein minimales [[Erzeugendensystem]] von $\mathcal{V}$
- $B$ ist eine maximale [[Lineare Unabhängigkeit|linear unabhängige]] [[Teilmenge]] von $\mathcal{V}$
- Jeder Vektor in $\mathcal{V}$ lässt sich eindeutig als [[Linearkombination]] der Elemente von $B$ darstellen