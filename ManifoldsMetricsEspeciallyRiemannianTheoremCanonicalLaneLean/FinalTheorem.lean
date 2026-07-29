import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ManifoldsMetricsEspeciallyRiemannianTheoremCanonicalLaneLean.ComparisonTheoremLayer
import HautevilleHouse.ManifoldsMetricsEspeciallyRiemannianTheoremCanonicalLaneLean.RicciFlowPDE

namespace HautevilleHouse
namespace ManifoldsMetricsEspeciallyRiemannianTheoremCanonicalLaneLean

def ConstrainedRiemannianClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_riemannian_endgame (A : AdmissibleClass) :
  ConstrainedRiemannianClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

def ComparisonLayerAdmitted : Prop :=
  ComparisonTheoremLayerClosed defaultComparisonTheoremLayerCertificate

def RicciFlowLayerAdmitted : Prop :=
  RicciFlowClosed defaultRicciFlowCertificate

theorem comparison_layer_admitted_checked : ComparisonLayerAdmitted := by
  exact comparison_theorem_layer_closed_checked

theorem ricci_flow_layer_admitted_checked : RicciFlowLayerAdmitted := by
  exact ricci_flow_closed_checked

end ManifoldsMetricsEspeciallyRiemannianTheoremCanonicalLaneLean
end HautevilleHouse