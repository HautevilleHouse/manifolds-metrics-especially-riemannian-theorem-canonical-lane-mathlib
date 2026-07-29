import HautevilleHouse.ManifoldsMetricsEspeciallyRiemannianTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ManifoldsMetricsEspeciallyRiemannianTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ManifoldsMetricsEspeciallyRiemannianTheoremCanonicalLaneLean
end HautevilleHouse