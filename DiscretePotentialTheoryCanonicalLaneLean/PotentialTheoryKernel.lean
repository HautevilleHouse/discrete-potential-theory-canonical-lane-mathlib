import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscretePotentialTheoryCanonicalLaneLean.DiscreteGraph

namespace HautevilleHouse
namespace DiscretePotentialTheoryCanonicalLaneLean

structure PotentialTheoryKernel (G : DiscreteGraph) where
  source : G.vertices
  target : G.vertices
  kernelFunction : G.vertices → G.vertices → ℝ
  subharmonicCondition : kernelFunction source target ≥ 0
  superharmonicCondition : kernelFunction source target ≤ 1
  laplaceCondition : ∀ v, (∑' (u : G.vertices) with G.edges v u, kernelFunction v u) - kernelFunction v v = 0

structure PotentialTheoryKernelEvidence (G : DiscreteGraph) (K : PotentialTheoryKernel G) where
  subharmonicConditionClosed : K.kernelFunction K.source K.target ≥ 0
  superharmonicConditionClosed : K.kernelFunction K.source K.target ≤ 1
  laplaceConditionClosed : ∀ v, (∑' (u : G.vertices) with G.edges v u, K.kernelFunction v u) - K.kernelFunction v v = 0

def PotentialTheoryKernelClosed (G : DiscreteGraph) (K : PotentialTheoryKernel G) : Prop :=
  K.kernelFunction K.source K.target ≥ 0 ∧ K.kernelFunction K.source K.target ≤ 1 ∧
  (∀ v, (∑' (u : G.vertices) with G.edges v u, K.kernelFunction v u) - K.kernelFunction v v = 0)

theorem potential_theory_kernel_closed_from_evidence (G : DiscreteGraph) (K : PotentialTheoryKernel G) (E : PotentialTheoryKernelEvidence G K) : PotentialTheoryKernelClosed G K := by
  exact And.intro E.subharmonicConditionClosed (And.intro E.superharmonicConditionClosed E.laplaceConditionClosed)

end DiscretePotentialTheoryCanonicalLaneLean
end HautevilleHouse