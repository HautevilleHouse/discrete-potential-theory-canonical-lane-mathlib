import DiscretePotentialTheoryCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DiscretePotentialTheoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DiscretePotentialGraph where
  vertices : Type
  edges : vertices → vertices → Prop
  locallyFinite : Prop

structure DiscretePotentialAdmittedObject where
  graph : DiscretePotentialGraph
  harmonicFunction : Type
  boundaryAtInfinity : Prop
  solutionUnique : Prop
  conclusion : solutionUnique

structure DiscretePotentialEndgameState where
  object : DiscretePotentialAdmittedObject

def DiscretePotentialWitnessClosed (O : DiscretePotentialAdmittedObject) : Prop :=
  O.solutionUnique

end DiscretePotentialTheoryCanonicalLaneLean
end HautevilleHouse
