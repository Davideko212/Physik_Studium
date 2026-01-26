Sei $A \in \mathbb{K}^{n \times n}$, dargestellt als
$$A =
\begin{pmatrix}
\textbf{a}_{1} \ \textbf{a}_{2} \ \dots \ \textbf{a}_{n}
\end{pmatrix}
=
\begin{pmatrix}
\underline{\textbf{a}}_{1} \\
\underline{\textbf{a}}_{2} \\
\dots \\
\underline{\textbf{a}}_{m}
\end{pmatrix}
$$
mit den entsprechenden Spaltenvektoren $\textbf{a}_j = (a_{1j}, a_{2j}, \dots, a_{mj})^T$, für $j = 1, \dots, n$, sowie den Zeilenvektoren $\underline{\textbf{a}}_i = (a_{i1}, a_{i2}, \dots, a_{in})$, für $i = 1, \dots, m$.
- Die max. Anzahl der [[Lineare Unabhängigkeit|linear unabhängigen]] [[Vektor|Vektoren]] $\textbf{a}_j$ heißt der Spaltenrang der [[Matrix]] $A$.
- Die max. Anzahl der [[Lineare Unabhängigkeit|linear unabhängigen]] [[Vektor|Vektoren]] $\underline{\textbf{a}}_i$ heißt der Zeilenrang der [[Matrix]] $A$.

Der Zeilenrang stimmt IMMER mit dem Spaltenrang überein, d.h. die max. Anzahl [[Lineare Unabhängigkeit|linear unabhängiger]] [[Vektor|Vektoren]] $\textbf{a}_j$ bzw. $\underline{\textbf{a}}_i$ heißt der Rang der [[Matrix]] $A$ und wird bezeichnet als $\text{Rang}(A)$.

Beweis: TODO

Um bei großen [[Matrix|Matrizen]] den Rang strukturiert bestimmen zu können werden [[Elementare Umformung|elementare Umformungen]] eingesetzt, denn diese verändern den Rang nicht.

Für eine [[Matrix]] $A \in \mathbb{K}^{m \times n}$ gilt $\text{Rang}(A) \le \min(m, n)$. Falls $\text{Rang}(A) = \min(m, n)$ gilt, spricht man vom vollen Rang der [[Matrix]] $A$.

Da die Spalten des [[Matrixprodukt|Matrixprodukts]] $AB$ [[Linearkombination|Linearkombinationen]] der Spalten von $A$ sind und da die Zeilen des [[Matrixprodukt|Matrixprodukts]] $AB$ [[Linearkombination|Linearkombinationen]] der Zeilen von $B$ sind, gilt $\text{Rang}(AB) \le \min(\text{Rang}(A), \text{Rang}(B))$.

