import canonicalLaneMathlib.AdmissibleClass
import DiscretePotentialTheoryCanonicalLaneLean.DiscreteGraphLaplacian

namespace HautevilleHouse
namespace DiscretePotentialTheoryCanonicalLaneLean

structure HarmonicFunctionPackage {V : Type} (L : DiscreteGraphLaplacianPackage V) where
  functionSpace : Type
  harmonicCondition : (V → ℝ) → Prop
  existsBasis : Prop
  maximumPrinciple : Prop
  convergenceRate : ℝ
  convergencePositive : convergenceRate > 0

structure HarmonicFunctionEvidence {V : Type} {L : DiscreteGraphLaplacianPackage V}
  (H : HarmonicFunctionPackage L) where
  harmonicConditionClosed : H.harmonicCondition
  maximumPrincipleClosed : H.maximumPrinciple
  convergencePositiveClosed : H.convergencePositive

def HarmonicFunctionClosed {V : Type} {L : DiscreteGraphLaplacianPackage V}
  (H : HarmonicFunctionPackage L) : Prop :=
  H.harmonicCondition ∧ H.maximumPrinciple ∧ H.convergencePositive

theorem harmonic_function_closed_from_evidence {V : Type} {L : DiscreteGraphLaplacianPackage V}
  (H : HarmonicFunctionPackage L) (E : HarmonicFunctionEvidence H) :
  HarmonicFunctionClosed H := by
  exact And.intro E.harmonicConditionClosed
    (And.intro E.maximumPrincipleClosed E.convergencePositiveClosed)

end DiscretePotentialTheoryCanonicalLaneLean
end HautevilleHouse