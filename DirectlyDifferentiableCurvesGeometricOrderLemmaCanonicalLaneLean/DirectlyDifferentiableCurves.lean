import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean

structure DirectlyDifferentiableCurvesPackage where
  curveSpace : Type u
  differentialStructure : Prop
  orderRelation : curveSpace → curveSpace → Prop
  geometricOrderLemma : Prop
  differentialStructureClosed : differentialStructure
  orderRelationTransitive : ∀ (x y z : curveSpace), orderRelation x y → orderRelation y z → orderRelation x z
  orderRelationReflexive : ∀ (x : curveSpace), orderRelation x x

structure DirectlyDifferentiableCurvesEvidence (P : DirectlyDifferentiableCurvesPackage) where
  geometricOrderLemmaClosed : P.geometricOrderLemma

def DirectlyDifferentiableCurvesClosed (P : DirectlyDifferentiableCurvesPackage) : Prop :=
  P.differentialStructure ∧ P.geometricOrderLemma

theorem directlyDifferentiableCurvesClosedFromEvidence (P : DirectlyDifferentiableCurvesPackage) (E : DirectlyDifferentiableCurvesEvidence P) : DirectlyDifferentiableCurvesClosed P := by
  exact And.intro P.differentialStructureClosed E.geometricOrderLemmaClosed

end DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean
end HautevilleHouse
