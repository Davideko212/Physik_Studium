Seien $\mathcal{V}$ und $\mathcal{W}$ [[Vektorraum|Vektorräume]] über demselben [[Körper]] $\mathbb{K}$. Eine [[Abbildung]] $\varphi: \mathcal{V} \rightarrow \mathcal{W}$, welche die Bedingungen
1) [[Additivität]]: $\varphi(\textbf{x} + \textbf{y}) = \varphi(\textbf{x}) + \varphi(\textbf{y})$ für alle $\textbf{x}, \textbf{y} \in \mathcal{V}$ 
2) [[Homogenität]]: $\varphi(s\textbf{x}) = s\varphi(\textbf{x})$ für alle $s \in \mathbb{K}$ und $\textbf{x} \in \mathcal{V}$
erfüllt, heißt eine lineare [[Abbildung]]. Für $\mathcal{W} = \mathbb{K}$ heißt $\varphi$ eine [[Linearform]] oder ein [[Lineares Funktional]].

Die Bedingungen können zusammengeführt werden zu
$$\varphi(s\textbf{x} + t\textbf{y}) = s\varphi(\textbf{x}) + t\varphi(\textbf{y})$$
Mit Hilfe der [[Vollständige Induktion|vollständigen Induktion]] kann gezeigt werden, dass dieser Sachverhalt  auch für [[Linearkombination|Linearkombinationen]] erfüllt ist, d.h. es gilt
$$\varphi(s_1\textbf{x}_1 + ... + s_n\textbf{x}_n) = s_1\varphi(\textbf{x}_1) + ... + s_n\varphi(\textbf{x}_n)$$
Sei $\varphi: \mathcal{V} \rightarrow \mathcal{W}$ eine lineare Abbildung. Es gilt:
- $\varphi(\textbf{0}) = \textbf{0}$ und $\varphi(-\textbf{x}) = -\varphi(\textbf{x})$
- Sind die [[Vektor|Vektoren]] $\textbf{v}_1, ..., \textbf{v}_k$ in $\mathcal{V}$ [[Lineare Abhängigkeit|linear abhängig]], so sind auch die [[Vektor|Vektoren]] $\varphi(\textbf{v}_1), ..., \varphi(\textbf{v}_k)$ [[Lineare Abhängigkeit|linear abhängig]] in $\mathcal{W}$
- [[Dimension|dim]]($\varphi(\mathcal{V})$) $\le$ [[Dimension|dim]]($\mathcal{V}$)

Beweise: TODO (Seite 54)

TODO der Rest weil lin abb sind ganz viel