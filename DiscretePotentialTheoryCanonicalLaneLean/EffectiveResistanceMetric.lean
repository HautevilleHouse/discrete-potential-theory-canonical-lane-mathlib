import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscretePotentialTheoryCanonicalLaneLean

structure EffectiveResistanceMetric where
  vertexSet : Type u
  edgeConductance : vertexSet → vertexSet → ℝ
  effectiveResistance : vertexSet → vertexSet → ℝ
  graphPotential : Type v
  currentFlow : Type w
  kirchhoffsLaw : Prop
  ohmsLaw : Prop
  reciprocity : Prop
  triangleInequality : Prop

structure EffectiveResistanceMetricEvidence (E : EffectiveResistanceMetric) where
  kirchhoffsLawClosed : E.kirchhoffsLaw
  ohmsLawClosed : E.ohmsLaw
  reciprocityClosed : E.reciprocity
  triangleInequalityClosed : E.triangleInequality

def EffectiveResistanceMetricClosed (E : EffectiveResistanceMetric) : Prop :=
  E.kirchhoffsLaw ∧ E.ohmsLaw ∧ E.reciprocity ∧ E.triangleInequality

theorem effective_resistance_metric_closed_from_evidence (E : EffectiveResistanceMetric) (Ev : EffectiveResistanceMetricEvidence E) : EffectiveResistanceMetricClosed E := by
  exact And.intro Ev.kirchhoffsLawClosed (And.intro Ev.ohmsLawClosed (And.intro Ev.reciprocityClosed Ev.triangleInequalityClosed))

end DiscretePotentialTheoryCanonicalLaneLean
end HautevilleHouse