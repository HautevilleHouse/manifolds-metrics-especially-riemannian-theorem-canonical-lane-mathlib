import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMetricsEspeciallyRiemannianTheoremCanonicalLaneLean

structure CurvatureTensor where
  sectionalCurvature : Prop
  ricciCurvature : Prop
  scalarCurvature : Prop
  curvatureBounded : Bool

def primitiveCurvatureTensor : CurvatureTensor := {
  sectionalCurvature := True,
  ricciCurvature := True,
  scalarCurvature := True,
  curvatureBounded := true
}

def CurvatureTensorReady (C : CurvatureTensor) : Prop :=
  C.curvatureBounded = true

theorem curvature_tensor_ready_checked : CurvatureTensorReady primitiveCurvatureTensor := by
  exact rfl

end ManifoldsMetricsEspeciallyRiemannianTheoremCanonicalLaneLean
end HautevilleHouse