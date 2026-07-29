import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean

structure DifferentiableCurve where
  ambientManifold : Type
  curveParam : ℝ
  position : ℝ → ambientManifold
  differentiable : Prop

structure GeometricOrderLemmaPackage (C : DifferentiableCurve) where
  orderPreserving : Prop
  localOrderImpliesGlobal : Prop
  differentiableOrder : Prop

structure GeometricOrderEvidence {C : DifferentiableCurve}
    (P : GeometricOrderLemmaPackage C) where
  orderPreservingClosed : P.orderPreserving
  localOrderImpliesGlobalClosed : P.localOrderImpliesGlobal
  differentiableOrderClosed : P.differentiableOrder

def GeometricOrderClosed {C : DifferentiableCurve}
    (P : GeometricOrderLemmaPackage C) : Prop :=
  P.orderPreserving ∧ P.localOrderImpliesGlobal ∧ P.differentiableOrder

theorem geometric_order_closed_from_evidence
    {C : DifferentiableCurve} (P : GeometricOrderLemmaPackage C)
    (E : GeometricOrderEvidence P) : GeometricOrderClosed P := by
  exact And.intro E.orderPreservingClosed
    (And.intro E.localOrderImpliesGlobalClosed E.differentiableOrderClosed)

end DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean
end HautevilleHouse