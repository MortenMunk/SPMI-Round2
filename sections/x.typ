#import "/globals.typ": *

= Comparative study

---

#figure(
  image("/img/x.png", width: 100%),
  caption: [(Miao, et al., 2024)],
)

---

#figure(
  image("/img/comp.png", width: 100%),
  caption: [(Miao, et al., 2024)],
)

= Limitations
---

*None of the methods are tested on ciphers*
- Ciphers are slightly different than regular machine translation

*No one method dominates*
- Performer is likely best for 4096 sequence length
- I would like to go way beyond 4k sequence length #emoji.face.cool

*Long Short dependencies*
- Will it work for very long ciphers?
- What do you think is most important?
  - Global
  - Local
  - Evenly?

= Summary

---

Linformer
- Low-rank projection

Performer
- Random feature approximation

Reordered
- Associativity method

Long Short
- Dual attention
