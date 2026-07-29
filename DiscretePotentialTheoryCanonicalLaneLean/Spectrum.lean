import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscretePotentialTheoryCanonicalLaneLean.GraphLaplacian

namespace HautevilleHouse
namespace DiscretePotentialTheoryCanonicalLaneLean

structure SpectrumPackage {G : GraphLaplacianPackage} where
  eigenvalues : List ℝ
  eigenvectors : Type u
  spectralGap : ℝ
  cheegerInequality : Prop
  eigenvalueBounds : Prop

structure SpectrumEvidence {G : GraphLaplacianPackage}
    (S : SpectrumPackage G) where
  cheegerInequalityClosed : S.cheegerInequality
  eigenvalueBoundsClosed : S.eigenvalueBounds

def SpectrumClosed {G : GraphLaplacianPackage}
    (S : SpectrumPackage G) : Prop :=
  S.cheegerInequality ∧ S.eigenvalueBounds

theorem spectrum_closed_from_evidence {G : GraphLaplacianPackage}
    (S : SpectrumPackage G) (E : SpectrumEvidence S) :
    SpectrumClosed S := by
  exact And.intro E.cheegerInequalityClosed E.eigenvalueBoundsClosed

end DiscretePotentialTheoryCanonicalLaneLean
end HautevilleHouse