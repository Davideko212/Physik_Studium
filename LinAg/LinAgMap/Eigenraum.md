Sei $\varphi: \mathcal{V} \rightarrow \mathcal{V}$ eine [[Lineare Selbstabbildung]]. Es heißt
$$ E_{\lambda} := \{\textbf{v} \in \mathcal{V}: \varphi(\textbf{v}) = \lambda\textbf{v}\}$$
der Eigenraum von $\varphi$ zum [[Eigenwert]] $\lambda$. (Das gleiche gilt auch im [[Spaltenraum]] für $\varphi: \mathbb{K}^n \rightarrow \mathbb{K}^n$ mit $A \in \mathbb{K}^{n \times n}$)

Ausgehend von der Definition gilt:
- Die Menge $E_\lambda \backslash \{\textbf{0}\}$ stellt alle [[Eigenvektor|Eigenvektoren]] von $\varphi$ bzw. $A$ zum [[Eigenwert]] $\lambda$ dar.
- $E_\lambda$ = [[Kern]]($\varphi - \lambda id$) bzw. $E_\lambda$ = [[Kern]]($A - \lambda id$)
- $E_\lambda  \subseteq \mathcal{V}$ ist ein [[Unterraum]] von $\mathcal{V}$, bzw. $E_\lambda  \subseteq \mathbb{K}^n$ ist ein [[Unterraum]] von $\mathbb{K}^n$.
- Für $\lambda, \mu \in \mathbb{K}, \lambda \neq \mu$ gilt $E_\lambda \space \cap \space E_\mu = \{\textbf{0}\}$, diese stellen also eine [[Direkte Summe]] dar.

Beweise: TODO

Die [[Dimension]] eines Eigenraums ist die [[Geometrische Vielfachheit]] des [[Eigenwert|Eigenwerts]] $\lambda$ von $\varphi$ bzw. $A$.