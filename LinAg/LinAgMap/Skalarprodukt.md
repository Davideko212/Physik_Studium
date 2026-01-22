Eine [[Abbildung]] $\langle .,. \rangle: \mathcal{V} \times \mathcal{V} \rightarrow \mathbb{K}$ heißt ein Skalarprodukt auf $\mathcal{V}$, wenn für alle $\textbf{u}, \textbf{v}, \textbf{w} \in \mathcal{V}$ und $s,t \in \mathbb{K}$ die folgenden Eigenschaften erfüllt sind:
1) [[Linearität]] im zweiten Argument:
2) [[Hermitesche Matrix|Hermitesche]] [[Symmetrie]]: 
3) Positive [[Definitheit]]:
Für $\mathbb{K} = \mathbb{R}$ vereinfacht sich die Definition eines Skalarprodukts, da die [[Symmetrie]] aus (b) ohne [[Konjugation]] auskommt und damit die [[Linearität]] aus (a) in beiden Argumenten zu finden ist.

Aus den Axiomen des Skalarprodukts folgt unmittelbar:
1) $\langle s \textbf{v} + t \textbf{w}, \textbf{u} \rangle = \overline{s} \langle \textbf{v}, \textbf{u} \rangle + \overline{t} \langle \textbf{w}, \textbf{u} \rangle$ 
2) $\langle s \textbf{u}, t \textbf{v} \rangle = \overline{s} t \langle \textbf{u}, \textbf{v} \rangle$
3) $\langle \textbf{0}, \textbf{v} \rangle = \langle \textbf{v}, \textbf{0} \rangle = 0$

Beweise: TODO

Der wesentliche Unterschied zwischen reellem und komplexem Skalarprodukt in der Art der [[Linearität]] in den beiden Argumenten:
- Im reellen Fall $\mathbb{K} = \mathbb{R}$ ist das Skalarprodukt in beiden Argumenten [[Linearität|linear]], dies wird als bilinear bezeichnet. Das Skalarprodukt wird in diesem Zusammenhang auch [[Bilinearform]] genannt.
- Im komplexen Fall $\mathbb{K} = \mathbb{C}$ ist das Skalarprodukt anderthalb linear, d.h. [[Linearität|linear]] im zweiten und [[Semilinearität|semilinear]] im ersten Argument, dies wird als sesquilinear bezeichnet. Das Skalarprodukt wird in diesem Zusammenhang auch [[Sesquilinearform]] genannt.
- In beiden Bezeichnungen findet sich der Begriff "Form" wieder, der schon bei den [[Linearform|Linearformen]] den Umstand zum Ausdruck gebracht hat, dass die [[Abbildung]] in den zugehörigen Skalarkörper erfolgt. Dies ist auch bei der [[Bilinearform|Bi-]] bzw. [[Sesquilinearform]] der Fall.
- Die unterschiedliche Behandlung von $\mathbb{K} = \mathbb{R}$ bzw. $\mathbb{K} = \mathbb{C}$ ist notwendig, um die positive [[Definitheit]] des Skalarproduktes im jeweiligen Fall zu gewährleisten.