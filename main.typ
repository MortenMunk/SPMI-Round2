#import "/globals.typ": *

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  footer: self => self.info.institution,
  config-info(
    title: [Language Models in Cryptanalysis],
    subtitle: [How do we crack the long ciphers?],
    author: [Morten Munk],
    date: [November 2025],
    institution: [AAU CPH - SW9],
  ),
)
#set heading(numbering: numbly("{1}.", default: "1.1"))
#title-slide()
// Table of contents
#include "sections/toc.typ"
#include "sections/agenda.typ"
#include "sections/intro.typ"

= Questions?
