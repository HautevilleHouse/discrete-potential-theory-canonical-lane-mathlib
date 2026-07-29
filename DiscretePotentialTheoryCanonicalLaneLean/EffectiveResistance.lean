import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscretePotentialTheoryCanonicalLaneLean.DirichletProblem

namespace HautevilleHouse
namespace DiscretePotentialTheoryCanonicalLaneLean

structure EffectiveResistancePackage {L : GraphLaplacianPackage} {H : HarmonicFunctionPackage L} (D : DirichletProblemPackage H) where
  endpoints : Type u
  unitCurrentFlow : endpoints → ℝ
  voltagePotential : endpoints → ℝ
  effectiveResistanceValue : ℝ
  positiveDefinite : Prop
  reciprocality : Prop

structure EffectiveResistanceEvidence {L : GraphLaplacianPackage} {H : HarmonicFunctionPackage L} {D : DirichletProblemPackage H} (R : EffectiveResistancePackage D) where
  positiveDefiniteClosed : R.positiveDefinite
  reciprocalityClosed : R.reciprocality

def EffectiveResistanceClosed {L : GraphLaplacianPackage} {H : HarmonicFunctionPackage L} {D : DirichletProblemPackage H} (R : EffectiveResistancePackage D) : Prop :=
  R.positiveDefinite ∧ R.reciprocality

theorem effective_resistance_closed_from_evidence {L : GraphLaplacianPackage} {H : HarmonicFunctionPackage L} {D : DirichletProblemPackage H} (R : EffectiveResistancePackage D) (E : EffectiveResistanceEvidence R) : EffectiveResistanceClosed R := by
  exact And.intro E.positiveDefiniteClosed E.reciprocalityClosed

end DiscretePotentialTheoryCanonicalLaneLean
end HautevilleHouse