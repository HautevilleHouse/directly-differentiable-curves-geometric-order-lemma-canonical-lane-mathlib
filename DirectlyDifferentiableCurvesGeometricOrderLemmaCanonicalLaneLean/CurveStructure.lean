import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean

structure CurveSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  smoothStructure : Prop

structure ParameterizedCurve (M : CurveSpace) where
  interval : ℝ → Prop
  map : {t : ℝ // interval t} → M.carrier
  differentiable : Prop
  orderRelation : M.carrier → M.carrier → Prop
  orderCompatible : Prop

structure CurveAdmittedObject (M : CurveSpace) where
  curve : ParameterizedCurve M
  geometricOrder : Prop
  conclusion : geometricOrder

def CurveWitnessClosed (O : CurveAdmittedObject) : Prop :=
  O.geometricOrder

end DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean
end HautevilleHouse