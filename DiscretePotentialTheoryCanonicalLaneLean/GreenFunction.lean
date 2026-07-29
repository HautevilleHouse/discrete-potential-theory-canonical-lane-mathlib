import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscretePotentialTheoryCanonicalLaneLean.GraphLaplacian

namespace HautevilleHouse
namespace DiscretePotentialTheoryCanonicalLaneLean

structure GreenFunctionPackage {G : GraphLaplacianPackage} where
  greenKernel : G.vertexSet -> G.vertexSet -> ℝ
  laplacianInverse : Prop
  positiveDefinite : Prop
  symmetricKernel : Prop

structure GreenFunctionEvidence {G : GraphLaplacianPackage}
    (Gr : GreenFunctionPackage G) where
  laplacianInverseClosed : Gr.laplacianInverse
  positiveDefiniteClosed : Gr.positiveDefinite
  symmetricKernelClosed : Gr.symmetricKernel

def GreenFunctionClosed {G : GraphLaplacianPackage}
    (Gr : GreenFunctionPackage G) : Prop :=
  Gr.laplacianInverse ∧ Gr.positiveDefinite ∧ Gr.symmetricKernel

theorem green_function_closed_from_evidence {G : GraphLaplacianPackage}
    (Gr : GreenFunctionPackage G) (E : GreenFunctionEvidence Gr) :
    GreenFunctionClosed Gr := by
  exact And.intro E.laplacianInverseClosed
    (And.intro E.positiveDefiniteClosed E.symmetricKernelClosed)

end DiscretePotentialTheoryCanonicalLaneLean
end HautevilleHouse