import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean

/-- Structure for the geometric order lemma parameters --
structure GeometricOrderPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Type v
  directlyDifferentiableCurve : manifold → Type w
  orderRelation : directlyDifferentiableCurve → directlyDifferentiableCurve → Prop
  orderRespecting : Prop
  orderClosed : Prop

structure GeometricOrderEvidence (G : GeometricOrderPackage) where
  orderRespectingClosed : G.orderRespecting
  orderClosedClosed : G.orderClosed

def GeometricOrderClosed (G : GeometricOrderPackage) : Prop :=
  G.orderRespecting ∧ G.orderClosed

theorem geometric_order_closed_from_evidence (G : GeometricOrderPackage) (E : GeometricOrderEvidence G) : GeometricOrderClosed G := by
  exact And.intro E.orderRespectingClosed E.orderClosedClosed

end DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean
end HautevilleHouse