import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscretePotentialTheoryCanonicalLaneLean

structure DiscreteDirichletEnergy where
  vertexSet : Type u
  edgeWeight : vertexSet → vertexSet → ℝ
  functionSpace : Type v
  energyFunctional : functionSpace → ℝ
  quadraticForm : functionSpace → ℝ
  positivity : Prop
  laplacianRelation : Prop
  coercivity : Prop

structure DiscreteDirichletEnergyEvidence (D : DiscreteDirichletEnergy) where
  positivityClosed : D.positivity
  laplacianRelationClosed : D.laplacianRelation
  coercivityClosed : D.coercivity

def DiscreteDirichletEnergyClosed (D : DiscreteDirichletEnergy) : Prop :=
  D.positivity ∧ D.laplacianRelation ∧ D.coercivity

theorem discrete_dirichlet_energy_closed_from_evidence (D : DiscreteDirichletEnergy) (E : DiscreteDirichletEnergyEvidence D) : DiscreteDirichletEnergyClosed D := by
  exact And.intro E.positivityClosed (And.intro E.laplacianRelationClosed E.coercivityClosed)

end DiscretePotentialTheoryCanonicalLaneLean
end HautevilleHouse