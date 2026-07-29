import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscretePotentialTheoryCanonicalLaneLean.GraphLaplacian

namespace HautevilleHouse
namespace DiscretePotentialTheoryCanonicalLaneLean

structure RandomWalkPackage {G : GraphLaplacianPackage} where
  transitionMatrix : G.vertexSet -> G.vertexSet -> ℝ
  stationaryDistribution : G.vertexSet -> ℝ
  reversible : Prop
  mixingTime : Prop
  recurrence : Prop

structure RandomWalkEvidence {G : GraphLaplacianPackage}
    (R : RandomWalkPackage G) where
  reversibleClosed : R.reversible
  mixingTimeClosed : R.mixingTime
  recurrenceClosed : R.recurrence

def RandomWalkClosed {G : GraphLaplacianPackage}
    (R : RandomWalkPackage G) : Prop :=
  R.reversible ∧ R.mixingTime ∧ R.recurrence

theorem random_walk_closed_from_evidence {G : GraphLaplacianPackage}
    (R : RandomWalkPackage G) (E : RandomWalkEvidence R) :
    RandomWalkClosed R := by
  exact And.intro E.reversibleClosed
    (And.intro E.mixingTimeClosed E.recurrenceClosed)

end DiscretePotentialTheoryCanonicalLaneLean
end HautevilleHouse