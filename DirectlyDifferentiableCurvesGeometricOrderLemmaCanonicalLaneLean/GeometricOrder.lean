import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean

structure GeometricOrderPackage (C : CurveSpacePackage) (E : EnergyFunctionalPackage) (G : GeodesicSegmentPackage) where
  monotonicityAlongGeodesics : Prop
  convexity : Prop
  isoperimetricInequality : Prop
  rigidity : Prop

def GeometricOrderClosed (C : CurveSpacePackage) (E : EnergyFunctionalPackage) (G : GeodesicSegmentPackage) (O : GeometricOrderPackage C E G) : Prop :=
  O.monotonicityAlongGeodesics ∧ O.convexity ∧ O.isoperimetricInequality ∧ O.rigidity

end DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean
end HautevilleHouse
