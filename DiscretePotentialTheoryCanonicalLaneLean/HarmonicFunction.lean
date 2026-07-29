import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscretePotentialTheoryCanonicalLaneLean.GraphLaplacian

namespace HautevilleHouse
namespace DiscretePotentialTheoryCanonicalLaneLean

structure HarmonicFunctionPackage (L : GraphLaplacianPackage) where
  functionSpace : Type u
  laplacianZero : (functionSpace → ℝ) → Prop
  maximumPrinciple : Prop
  uniqueness : Prop

structure HarmonicFunctionEvidence {L : GraphLaplacianPackage} (H : HarmonicFunctionPackage L) where
  laplacianZeroClosed : H.laplacianZero
  maximumPrincipleClosed : H.maximumPrinciple
  uniquenessClosed : H.uniqueness

def HarmonicFunctionClosed {L : GraphLaplacianPackage} (H : HarmonicFunctionPackage L) : Prop :=
  H.laplacianZero ∧ H.maximumPrinciple ∧ H.uniqueness

theorem harmonic_function_closed_from_evidence {L : GraphLaplacianPackage} (H : HarmonicFunctionPackage L) (E : HarmonicFunctionEvidence H) : HarmonicFunctionClosed H := by
  exact And.intro E.laplacianZeroClosed (And.intro E.maximumPrincipleClosed E.uniquenessClosed)

end DiscretePotentialTheoryCanonicalLaneLean
end HautevilleHouse