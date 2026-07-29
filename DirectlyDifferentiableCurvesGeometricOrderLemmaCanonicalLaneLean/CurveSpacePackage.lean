import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean

structure CurveSpacePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  dimensionFinite : Nat
  dimensionFinitePositive : Prop
  riemannianMetric : Type v
  metricSmooth : Prop
  curveSpace : Type w
  curveSpaceTopology : TopologicalSpace curveSpace
  curveSpaceSmooth : Prop
  admissibleParameterization : Prop

def CurveSpaceClosed (C : CurveSpacePackage) : Prop :=
  C.smoothStructure ∧ C.dimensionFinitePositive ∧ C.metricSmooth ∧ C.curveSpaceSmooth ∧ C.admissibleParameterization

end DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean
end HautevilleHouse
