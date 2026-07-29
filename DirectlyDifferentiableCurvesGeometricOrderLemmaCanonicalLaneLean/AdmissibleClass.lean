import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean

structure AdmissibleCurve where
  curve : Type
  orderRelation : curve → curve → Prop
  geometricOrder : Prop
  closed : Prop

structure AdmissibleClass where
  object : AdmissibleCurve
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.closed ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean
end HautevilleHouse