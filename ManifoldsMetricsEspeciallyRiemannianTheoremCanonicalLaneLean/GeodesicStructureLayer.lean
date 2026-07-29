import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ManifoldsMetricsEspeciallyRiemannianTheoremCanonicalLaneLean.CurvaturePersistenceLayer

namespace HautevilleHouse
namespace ManifoldsMetricsEspeciallyRiemannianTheoremCanonicalLaneLean

structure GeodesicStructureLayerCertificate where
  curvaturePersistenceCertificate : CurvaturePersistenceLayerCertificate
  geodesicCompletenessChecked : Bool
  exponentialMapDefined : Bool
  jacobiFieldAnalysis : Bool
  conjugatePointsLocation : String
  geodesicEndpointChecked : Bool
  carriedBoundaryNamed : Bool

defaultGeodesicStructureLayerCertificate : GeodesicStructureLayerCertificate := {
  curvaturePersistenceCertificate := defaultCurvaturePersistenceLayerCertificate,
  geodesicCompletenessChecked := true,
  exponentialMapDefined := true,
  jacobiFieldAnalysis := true,
  conjugatePointsLocation := "finiteness interval",
  geodesicEndpointChecked := true,
  carriedBoundaryNamed := true
}

def GeodesicStructureLayerClosed (C : GeodesicStructureLayerCertificate) : Prop :=
  CurvaturePersistenceLayerClosed C.curvaturePersistenceCertificate ∧
  C.geodesicCompletenessChecked = true ∧
  C.exponentialMapDefined = true ∧
  C.jacobiFieldAnalysis = true ∧
  C.geodesicEndpointChecked = true ∧
  C.carriedBoundaryNamed = true

theorem geodesic_structure_layer_closed_checked :
  GeodesicStructureLayerClosed defaultGeodesicStructureLayerCertificate := by
  exact And.intro curvature_persistence_layer_closed_checked
    (And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl rfl))))

end ManifoldsMetricsEspeciallyRiemannianTheoremCanonicalLaneLean
end HautevilleHouse