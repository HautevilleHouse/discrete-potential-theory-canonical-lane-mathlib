import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscretePotentialTheoryCanonicalLaneLean.GraphLaplacian

namespace HautevilleHouse
namespace DiscretePotentialTheoryCanonicalLaneLean

structure HarmonicFunctionPackage {G : GraphLaplacianPackage} where
  functionSpace : Type u
  laplacianZero : functionSpace -> Prop
  maximumPrinciple : Prop
  uniquenessGivenBoundary : Prop

structure HarmonicFunctionEvidence {G : GraphLaplacianPackage}
    (H : HarmonicFunctionPackage G) where
  laplacianZeroClosed : H.laplacianZero
  maximumPrincipleClosed : H.maximumPrinciple
  uniquenessGivenBoundaryClosed : H.uniquenessGivenBoundary

def HarmonicFunctionClosed {G : GraphLaplacianPackage}
    (H : HarmonicFunctionPackage G) : Prop :=
  H.laplacianZero ∧ H.maximumPrinciple ∧ H.uniquenessGivenBoundary

theorem harmonic_function_closed_from_evidence {G : GraphLaplacianPackage}
    (H : HarmonicFunctionPackage G) (E : HarmonicFunctionEvidence H) :
    HarmonicFunctionClosed H := by
  exact And.intro E.laplacianZeroClosed
    (And.intro E.maximumPrincipleClosed E.uniquenessGivenBoundaryClosed)

end DiscretePotentialTheoryCanonicalLaneLean
end HautevilleHouse