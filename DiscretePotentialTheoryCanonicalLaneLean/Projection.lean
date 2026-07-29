import DiscretePotentialTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscretePotentialTheoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def discretePotentialProjection : Projection DiscretePotentialEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem discrete_potential_projection_idempotent (x : DiscretePotentialEndgameState) :
    discretePotentialProjection.toFun (discretePotentialProjection.toFun x) = discretePotentialProjection.toFun x := by
  exact discretePotentialProjection.idempotent x

end DiscretePotentialTheoryCanonicalLaneLean
end HautevilleHouse
