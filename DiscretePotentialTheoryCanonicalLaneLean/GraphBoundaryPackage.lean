import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscretePotentialTheoryCanonicalLaneLean

structure GraphBoundaryPackage where
  vertexSet : Type u
  edgeSet : Type v
  boundarySubset : Set vertexSet
  harmonicFunctionSpace : Type w
  discreteLaplacianDefined : Prop
  boundaryValuesAssigned : Prop
  discreteGreenFunction : Prop

structure GraphBoundaryEvidence (G : GraphBoundaryPackage) where
  harmonicFunctionSpaceClosed : G.harmonicFunctionSpace
  discreteLaplacianDefinedClosed : G.discreteLaplacianDefined
  boundaryValuesAssignedClosed : G.boundaryValuesAssigned
  discreteGreenFunctionClosed : G.discreteGreenFunction

def GraphBoundaryClosed (G : GraphBoundaryPackage) : Prop :=
  G.harmonicFunctionSpace ∧ G.discreteLaplacianDefined ∧
  G.boundaryValuesAssigned ∧ G.discreteGreenFunction

theorem graph_boundary_closed_from_evidence (G : GraphBoundaryPackage) (E : GraphBoundaryEvidence G) : GraphBoundaryClosed G := by
  exact And.intro E.harmonicFunctionSpaceClosed
    (And.intro E.discreteLaplacianDefinedClosed
      (And.intro E.boundaryValuesAssignedClosed E.discreteGreenFunctionClosed))

end DiscretePotentialTheoryCanonicalLaneLean
end HautevilleHouse