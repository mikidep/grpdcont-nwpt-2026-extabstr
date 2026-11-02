SUBMISSION: 10
TITLE: Groupoid Containers in Locally Univalent (2,1)-Categories

----------------------- REVIEW 1 ---------------------

SUBMISSION: 10
TITLE: Groupoid Containers in Locally Univalent (2,1)-Categories

----------- Overall evaluation -----------
SCORE: 2 (accept)
----- TEXT:
The abstract describes work in progress on extending results about set-truncated containers in type theory to groupoid-truncated containers. It seems there are some interesting wrinkles (e.g. the problem of choosing a notion of monoid object in §3), and the results are potentially useful, although it would help for motivation to add some example(s) of groupoid containers. I recall that in

> Thorsten Altenkirch
> Quotient inductive types as categorified containers
> https://hott-uf.github.io/2024/abstracts/HoTTUF_2024_paper_10.pdf

multisets are given as an example.

Some local comments:

- Uustalu seems to be Schrödinger's coauthor.
  - DONE

- From the definition of LU2C: "... is a wild category whose hom-types are hGpds" does not suggest to me that the triangle and pentagon equations are included in the definition (as becomes clear after "Explicitly:"). By default, I would expect "wild" to mean only unit and associativity laws (as footnote 1 suggests).
  - DONE

- I believe the terminology "wild" comes from the paper

  > Capriotti and Kraus
  > Univalent Higher Categories via Complete Semi-Segal Types
  > https://doi.org/10.1145/3158132

  so I wouldn't call it Cubical jargon.
  - DONE

- Does the "locally univalent" terminology come from

  > Ahrens, Frumin, Maggesi, Veltri and Van der Weide
  > Bicategories in univalent foundations
  > 10.1017/S0960129522000032

  ? Perhaps this is worth a citation for the curious reader.
  - TODO: Discuss

- The notion of "categorified container" in
 
  > Gylterud
  > Symmetric containers
  > https://hdl.handle.net/10852/10740

  seems relevant.

- "In [8] and [3] we characterise monoids in a monoidal category."
  I suggest specifying the monoidal category in question. I misinterpreted the sentence as meaning a characterisation of monoids in C for an arbitrary monoidal category C.
  - DONE

- In the Definition in §4, I believe the Π should be a Σ. I think there is also a typo in the inr case of P*.
  - DONE

- §4: Is there any relation between the properties of F as (a) representing the free pseudomonad on ⟦F⟧ and (b) being some sort of generalised list object? E.g., does one imply the other? Or should I think of them as expressing different properties of F, and if so how? Do we already know that (b) holds for set containers?


----------------------- REVIEW 2 ---------------------

SUBMISSION: 10
TITLE: Groupoid Containers in Locally Univalent (2,1)-Categories

----------- Overall evaluation -----------
SCORE: 2 (accept)
----- TEXT:
This work fits into the broader tradition of higher category theory carried out in homotopy type theory and related settings. Specifically, this work seeks to generalize several known results about containers to the (2,1)-categorical setting. This seems like an interesting and reasonable question: (2,1)-category theory is approachable in plain HoTT and offers some useful flexibility over strict categories. Moreover, it is novel to the best of my knowledge with the references including the expected comparisons to prior work on containers.

I'd be curious to understand more of how working constructively influences the results of Section 3 and, in particular, if there are known results that cannot be proven constructively that hold of classical objects (such as the strictification mentioned by the authors).

In Section 4, it might be appropriate to add a reference for the classical fact. I'm also curious to know if the work on univalent bicategories (https://arxiv.org/abs/1903.01152) is potentially useful in this setting. This handles the (2,2)-case, but perhaps some of the machinery specializes to useful results?


----------------------- REVIEW 3 ---------------------

SUBMISSION: 10
TITLE: Groupoid Containers in Locally Univalent (2,1)-Categories

----------- Overall evaluation -----------
SCORE: 2 (accept)
----- TEXT:
This presents very nice work, upgrading parts of the classical theory of containers to the 2-dimensional level within a HoTT setting — the work is novel, non-trivial, well-motivated, and done with good taste. Especially, the use of locally univelant (2,1)-categories gives much better handling of the higher-categorical coherence issues than in some earlier work on similar topics.

The abstract is unfortunately a bit disorganised and unclear in seeral aspects — it generally feels rather hurriedly written.

- It’s unclear how novel the def of locally univalent (2,1)-categories is — it’s described as “adapted from [4]”. If I’m understanding right and not missing something in [4], this is being rather modest: the definition is really not explicitly present in [4], and so is a genuine contribution here; it’d be worth saying more clearly if so!  On the other hand, if the definition is not novel here, I’d suggest compressing the details slightly — at the moment, it gets much more detail and space than any of the specifics of the title content on groupoid containers.

- I found §3 quite hard to follow — had to read it over several times to see what it was trying to say. I think the main confusion is that it poses the question of characterising monoids, then jumps (in the bullet points) into answering the logically prior but different question of how GpdCont and endo(HGpd) can be viewed as monoidal categories. It would be much more comprehensible if the latter question were posed explicitly. Several other bits of unclear writing here compound the problem: e.g. it’s not at all clear to me what’s meant about the 2-cells being trivial/non-trivial in the two examples.

- §4 uses the language of polynomial functors — nothing eaerlier has introduced this language.  I’d even suggest perhaps adding a mention right at the start of the abstract, that containers are closely related to/also studied as polynomial functors, since for some readers they’ll be more familiar under that name.

minor points:

- In reference [2], “Hopf” should be capitalised (and there are a few other pieces of inconsistent capitalisation/punctuation in the refs)
