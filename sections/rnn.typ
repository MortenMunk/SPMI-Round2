#import "/globals.typ": *

= Reordered Computation
---

*Transformers are RNNs...*

#pause - Not really #emoji.face.clown

#pause But this paper shows how they can act like it

Also it has no illustrations, so instead you get math #emoji.face.party

---

*Generalized Attention $O(N^2)$*
- Output is weighted matrix determined by similiarity function
- Sim() could be softmax or cosine similiarity, etc.
$V_i^'=(sum_(j=1)^N "sim"(Q_i,K_j,)V_j)/(sum_(j=1)^N "sim"(Q_i, K_j))$

*Linear Attention O(N)*
- Notice the reordered computation
- Uses rule of associativity $(A times B) times C = A times (B times C)$
$V_i^'=(phi(Q_i)^T sum_(j=1)^N phi(K_j) V_j^T)/(phi(Q_i)^T sum_(j=1)^N phi(K_j)) #pause -> (phi(Q) phi(K)^T) V = underbrace(phi(Q), M_1) underbrace((phi(K)^T V), "M"_2 space O(N))$

Calculate $M_2$ which is independent of Att matrix size, then multiply with $M_1$

Softmax is non-factorizable! - replace with positive factorizable ELU allows reordering #emoji.checkmark

---

*But why do they claim transformers are RNNs?*

#pause
Used during inference

Standard Attention
- For each Q, look at each K

RNN approach
- $s_i$ = content memory of keys and values
- $z_i$ = normalizer memory (running total of weights)
- Combined they keep weighted average for next output
  - no need to look back at individual past keys!

For each Q it is constant lookup!
