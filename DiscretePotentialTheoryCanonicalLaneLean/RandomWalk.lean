import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscretePotentialTheoryCanonicalLaneLean.EffectiveResistance

namespace HautevilleHouse
namespace DiscretePotentialTheoryCanonicalLaneLean

structure RandomWalkPackage {L : GraphLaplacianPackage} {H : HarmonicFunctionPackage L} {D : DirichletProblemPackage H} (R : EffectiveResistancePackage D) where
  transitionMatrix : Type u
  stationaryDistribution : Type v
  hittingProbability : Type w
  commuteTimeExpectation : Type x
  connectionToResistance : ℝ
  recurrentTransientCriterion : Prop
  connectionToHarmonicMeasure : Prop

structure RandomWalkEvidence {L : GraphLaplacianPackage} {H : HarmonicFunctionPackage L} {D : DirichletProblemPackage H} {R : EffectiveResistancePackage D} (W : RandomWalkPackage R) where
  recurrentTransientCriterionClosed : W.recurrentTransientCriterion
  connectionToHarmonicMeasureClosed : W.connectionToHarmonicMeasure

def RandomWalkClosed {L : GraphLaplacianPackage} {H : HarmonicFunctionPackage L} {D : DirichletProblemPackage H} {R : EffectiveResistancePackage D} (W : RandomWalkPackage R) : Prop :=
  W.recurrentTransientCriterion ∧ W.connectionToHarmonicMeasure

theorem random_walk_closed_from_evidence {L : GraphLaplacianPackage} {H : HarmonicFunctionPackage L} {D : DirichletProblemPackage H} {R : EffectiveResistancePackage D} (W : RandomWalkPackage R) (E : RandomWalkEvidence W) : RandomWalkClosed W := by
  exact And.intro E.recurrentTransientCriterionClosed E.connectionToHarmonicMeasureClosed

end DiscretePotentialTheoryCanonicalLaneLean
end HautevilleHouse