import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscretePotentialTheoryCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.DiscretePotentialTheoryCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DiscretePotentialTheoryCanonicalLaneLean

def ConstrainedPotentialClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_potential_endgame (A : AdmissibleClass) :
    ConstrainedPotentialClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscretePotentialTheoryCanonicalLaneLean
end HautevilleHouse