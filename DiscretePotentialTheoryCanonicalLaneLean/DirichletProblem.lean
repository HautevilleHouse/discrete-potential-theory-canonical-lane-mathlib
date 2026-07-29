import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscretePotentialTheoryCanonicalLaneLean.HarmonicFunctions

namespace HautevilleHouse
namespace DiscretePotentialTheoryCanonicalLaneLean

structure DirichletProblemPackage {G : GraphLaplacianPackage}
    {H : HarmonicFunctionPackage G} where
  boundarySet : Set G.vertexSet
  boundaryData : G.vertexSet -> ℝ
  interiorSolution : Prop
  existence : Prop
  uniqueness : Prop

structure DirichletProblemEvidence {G : GraphLaplacianPackage}
    {H : HarmonicFunctionPackage G} (D : DirichletProblemPackage G H) where
  interiorSolutionClosed : D.interiorSolution
  existenceClosed : D.existence
  uniquenessClosed : D.uniqueness

def DirichletProblemClosed {G : GraphLaplacianPackage}
    {H : HarmonicFunctionPackage G} (D : DirichletProblemPackage G H) : Prop :=
  D.interiorSolution ∧ D.existence ∧ D.uniqueness

theorem dirichlet_problem_closed_from_evidence {G : GraphLaplacianPackage}
    {H : HarmonicFunctionPackage G} (D : DirichletProblemPackage G H)
    (E : DirichletProblemEvidence D) : DirichletProblemClosed D := by
  exact And.intro E.interiorSolutionClosed
    (And.intro E.existenceClosed E.uniquenessClosed)

end DiscretePotentialTheoryCanonicalLaneLean
end HautevilleHouse