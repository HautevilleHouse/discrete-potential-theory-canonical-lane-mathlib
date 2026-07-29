import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscretePotentialTheoryCanonicalLaneLean

structure RandomWalkHeatKernel where
  stateSpace : Type u
  transitionKernel : stateSpace → stateSpace → ℝ
  stationaryDistribution : stateSpace → ℝ
  heatKernel : ℕ → stateSpace → stateSpace → ℝ
  initialDistribution : stateSpace → ℝ
  markovProperty : Prop
  heatEquationSatisfied : Prop

structure RandomWalkHeatKernelEvidence (R : RandomWalkHeatKernel) where
  markovPropertyClosed : R.markovProperty
  heatEquationSatisfiedClosed : R.heatEquationSatisfied
  stationaryDistributionInvariant : ∀ x : R.stateSpace, (∑' y : R.stateSpace, R.stationaryDistribution y * R.transitionKernel y x) = R.stationaryDistribution x

def RandomWalkHeatKernelClosed (R : RandomWalkHeatKernel) : Prop :=
  R.markovProperty ∧ R.heatEquationSatisfied

theorem random_walk_heat_kernel_closed_from_evidence (R : RandomWalkHeatKernel) (E : RandomWalkHeatKernelEvidence R) : RandomWalkHeatKernelClosed R := by
  exact And.intro E.markovPropertyClosed E.heatEquationSatisfiedClosed

end DiscretePotentialTheoryCanonicalLaneLean
end HautevilleHouse