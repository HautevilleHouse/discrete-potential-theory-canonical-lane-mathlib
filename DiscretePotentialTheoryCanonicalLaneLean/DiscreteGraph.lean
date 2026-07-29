import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscretePotentialTheoryCanonicalLaneLean

structure DiscreteGraph where
  vertices : Type u
  edges : vertices → vertices → Prop
  locallyFinite : ∀ v, {u | edges v u}.Finite
  symmetric : Symmetric edges
  irreflexive : Irreflexive edges
  connected : Prop

structure DiscreteGraphEvidence (G : DiscreteGraph) where
  locallyFiniteClosed : ∀ v, {u | G.edges v u}.Finite
  symmetricClosed : Symmetric G.edges
  irreflexiveClosed : Irreflexive G.edges
  connectedClosed : G.connected := by
    exact G.connected

def DiscreteGraphClosed (G : DiscreteGraph) : Prop :=
  (∀ v, {u | G.edges v u}.Finite) ∧ Symmetric G.edges ∧ Irreflexive G.edges ∧ G.connected

theorem discrete_graph_closed_from_evidence (G : DiscreteGraph) (E : DiscreteGraphEvidence G) : DiscreteGraphClosed G := by
  exact And.intro E.locallyFiniteClosed (And.intro E.symmetricClosed (And.intro E.irreflexiveClosed E.connectedClosed))

end DiscretePotentialTheoryCanonicalLaneLean
end HautevilleHouse