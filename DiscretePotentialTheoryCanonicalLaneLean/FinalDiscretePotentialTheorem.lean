import DiscretePotentialTheoryCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace DiscretePotentialTheoryCanonicalLaneLean

theorem final_discrete_potential_theorem (A : AdmissibleClass) :
    ConstrainedDiscretePotentialClosure A := by
  exact constrained_discrete_potential_endgame A

end DiscretePotentialTheoryCanonicalLaneLean
end HautevilleHouse
