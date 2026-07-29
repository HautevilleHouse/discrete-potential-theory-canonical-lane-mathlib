import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscretePotentialTheoryCanonicalLaneLean

structure AdmissibleClass where
  object : DiscretePotentialAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiscretePotentialWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiscretePotentialTheoryCanonicalLaneLean
end HautevilleHouse
