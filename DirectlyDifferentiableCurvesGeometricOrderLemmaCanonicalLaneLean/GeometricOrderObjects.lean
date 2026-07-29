import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean

structure SmoothCurveData where
  carrier : Type
  topology : TopologicalSpace carrier
  smoothStructure : Prop

structure CurveAdmittedObject where
  curve : SmoothCurveData
  directlyDifferentiable : Prop
  geometricOrderSatisfied : Prop
  conclusion : geometricOrderSatisfied

structure CurveAdmissibleClass where
  object : CurveAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def curveWitnessClosed (O : CurveAdmittedObject) : Prop :=
  O.geometricOrderSatisfied

end DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean
end HautevilleHouse
