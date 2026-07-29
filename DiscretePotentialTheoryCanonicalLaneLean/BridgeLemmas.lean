import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscretePotentialTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (by
    let O := A.object
    have h : O.homeomorphicToSphere := O.conclusion
    exact h)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  exact A.object.conclusion

end DiscretePotentialTheoryCanonicalLaneLean
end HautevilleHouse