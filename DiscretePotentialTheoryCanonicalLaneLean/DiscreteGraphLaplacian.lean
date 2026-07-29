import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscretePotentialTheoryCanonicalLaneLean

structure DiscreteGraphLaplacianPackage (V : Type) where
  adjacency : V → V → Prop
  degree : V → ℕ
  laplacianMatrix : Type
  positiveSemidefinite : Prop
  kernelDimension : ℕ
  spectralGap : ℝ
  spectralGapPositive : spectralGap > 0

def DiscreteGraphLaplacianClosed {V : Type} (L : DiscreteGraphLaplacianPackage V) : Prop :=
  L.positiveSemidefinite ∧ L.kernelDimension = 1 ∧ L.spectralGapPositive

end DiscretePotentialTheoryCanonicalLaneLean
end HautevilleHouse