Sei $A \in \mathbb{K}^{n \times n}$. Es heißt
$$p_{A}(\lambda) := \det(A - \lambda I_{n})$$
das charakteristische [[Polynom]] der [[Matrix]] $A$. Die Vielfachheit der Nullstelle $\lambda$ im charakteristischen Polynom $p_A$ heißt die [[Algebraische Vielfachheit]] $n_\lambda$.

Es gilt:
- Das charakteristische Polynom $p_A$ ist ein [[Polynom]] vom [[Grad]] $n$ der Form
  $$p_{A}(\lambda) = \sum_{k=0}^n b_{k} \lambda^k$$
- Die Koeffizienten des charakteristischen Polynoms $p_A$ erfüllen ((Referenz: [[Spur]]))
  $$ b_{0} = \det(A), \ \ \ b_{n-1} = (-1)^{n-1} \sum_{k=1}^n a_{kk} = (-1)^{n-1} \text{Spur}(A), \ \ \ b_{n} = (-1)^n $$
- Ein [[Skalar]] $\lambda \in \mathbb{K}$ ist genau dann ein [[Eigenwert]] von $A$, wenn dieser Nullstelle von $p_A$ ist, d.h. $p_A(\lambda) = 0$ erfüllt.

Beweis: TODO

Satz von Cayley-Hamilton: Sei $\mathcal{V}$ ein endlich-[[Dimension|dimensionaler]] [[Vektorraum]] über dem [[Körper]] $\mathbb{K}$. Für jede Matrix $A \in \mathbb{K}^{n \times n}$ und das charakteristische Polynom $p_A$ der Matrix $A$ gilt $p_A(A) = 0$. Es stellt dabei $0$ die $n \times n$ [[Nullmatrix]] dar.