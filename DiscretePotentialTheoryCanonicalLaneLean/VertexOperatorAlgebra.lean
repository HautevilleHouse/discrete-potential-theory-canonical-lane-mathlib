import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscretePotentialTheoryCanonicalLaneLean

structure VertexOperatorAlgebra where
  vertexType : Type u
  linearOperator : vertexType → vertexType
  commutationRelation : Prop
  compositionClosed : Prop
  identityElement : vertexType
  identityOperator : vertexType → vertexType
  operatorIdentitiesSatisfied : Prop

structure VertexOperatorAlgebraEvidence (V : VertexOperatorAlgebra) where
  commutationRelationClosed : V.commutationRelation
  compositionClosedClosed : V.compositionClosed
  operatorIdentitiesSatisfiedClosed : V.operatorIdentitiesSatisfied

def VertexOperatorAlgebraClosed (V : VertexOperatorAlgebra) : Prop :=
  V.commutationRelation ∧ V.compositionClosed ∧
  V.operatorIdentitiesSatisfied ∧ ∀ x : V.vertexType, V.identityOperator x = x

theorem vertex_operator_algebra_closed_from_evidence (V : VertexOperatorAlgebra) (E : VertexOperatorAlgebraEvidence V) : VertexOperatorAlgebraClosed V := by
  refine And.intro E.commutationRelationClosed (And.intro E.compositionClosedClosed ?_)
  intro x; exact rfl

end DiscretePotentialTheoryCanonicalLaneLean
end HautevilleHouse