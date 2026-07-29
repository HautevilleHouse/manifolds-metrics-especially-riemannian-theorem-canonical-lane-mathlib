import HautevilleHouse.ManifoldsMetricsEspeciallyRiemannianTheoremCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.ManifoldsMetricsEspeciallyRiemannianTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ManifoldsMetricsEspeciallyRiemannianTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked,
    A.object.theoremObjectChecked,
    A.object.operatorModelWitness,
    A.object.spectralPersistenceBridgeWitness,
    A.object.sourceBoundaryLedgerWitness,
    A.object.classicalRemainderCarried⟩

end ManifoldsMetricsEspeciallyRiemannianTheoremCanonicalLaneLean
end HautevilleHouse