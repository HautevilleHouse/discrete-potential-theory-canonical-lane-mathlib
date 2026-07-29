import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscretePotentialTheoryCanonicalLaneLean

structure GraphLaplacianPackage where
  vertexSet : Type u
  edgeWeight : vertexSet -> vertexSet -> ℝ
  degree : vertexSet -> ℝ
  laplacianMatrix : vertexSet -> vertexSet -> ℝ
  symmetric : Prop
  positiveSemidefinite : Prop
  zeroEigenvalueMultiplicity : Prop

structure GraphLaplacianEvidence (G : GraphLaplacianPackage) where
  symmetricClosed : G.symmetric
  positiveSemidefiniteClosed : G.positiveSemidefinite
  zeroEigenvalueMultiplicityClosed : G.zeroEigenvalueMultiplicity

def GraphLaplacianClosed (G : GraphLaplacianPackage) : Prop :=
  G.symmetric ∧ G.positiveSemidefinite ∧ G.zeroEigenvalueMultiplicity

theorem graph_laplacian_closed_from_evidence (G : GraphLaplacianPackage)
    (E : GraphLaplacianEvidence G) : GraphLaplacianClosed G := by
  exact And.intro E.symmetricClosed
    (And.intro E.positiveSemidefiniteClosed E.zeroEigenvalueMultiplicityClosed)

end DiscretePotentialTheoryCanonicalLaneLean
end HautevilleHouse