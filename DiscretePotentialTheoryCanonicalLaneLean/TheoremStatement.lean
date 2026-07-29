import DiscretePotentialTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscretePotentialTheoryCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  discreteConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "discrete-potential-theory-canonical-lane",
    theoremName := "Discrete Potential Theory",
    theoremObject := "Discrete harmonic functions, electrical networks, and random walks on graphs",
    classicalBoundary := "Unrestricted classical boundary on infinite graphs",
    discreteConstrainedStatement := "Discrete-constrained theorem certificate internalized through bridge and gate",
    certificateLane := "discrete_constrained",
    carriedRemainder := "Classical source boundary carried by formalization"
  }

theorem theorem_statement_defined : sourceTheoremStatement.sourceKey = "discrete-potential-theory-canonical-lane" := by rfl

end DiscretePotentialTheoryCanonicalLaneLean
end HautevilleHouse