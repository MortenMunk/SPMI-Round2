#import "/globals.typ": *

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  footer: self => self.info.institution,
  config-info(
    title: [LMs in Cryptanalysis],
    subtitle: [How do we crack the long ciphers?],
    author: [Morten Munk],
    date: [May 2023],
    institution: [Findings of the Association for Computational Linguistics: EACL 2023],
  ),
)
#set heading(numbering: numbly("{1}.", default: "1.1"))

// Table of contents
#include "sections/toc.typ"
#include "sections/intro.typ"

= Questions?
