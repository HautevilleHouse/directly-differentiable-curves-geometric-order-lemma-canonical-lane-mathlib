import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean

structure HolonomyPackage {G : GeometricOrderPackage} {Curv : CurvatureComparisonPackage} {Con : ConnectionPackage} where
  holonomyGroup : Type u
  holonomyAction : holonomyGroup → G.manifold → G.manifold → Prop
  holonomyCurvatureRelation : Prop
  orderPreservedUnderHolonomy : Prop

structure HolonomyEvidence {G : GeometricOrderPackage} {Curv : CurvatureComparisonPackage} {Con : ConnectionPackage} (H : HolonomyPackage) where
  holonomyCurvatureRelationClosed : H.holonomyCurvatureRelation
  orderPreservedUnderHolonomyClosed : H.orderPreservedUnderHolonomy

def HolonomyClosed {G : GeometricOrderPackage} {Curv : CurvatureComparisonPackage} {Con : ConnectionPackage} (H : HolonomyPackage) : Prop :=
  H.holonomyCurvatureRelation ∧ H.orderPreservedUnderHolonomy

theorem holonomy_closed_from_evidence {G : GeometricOrderPackage} {Curv : CurvatureComparisonPackage} {Con : ConnectionPackage} (H : HolonomyPackage) (E : HolonomyEvidence H) : HolonomyClosed H := by
  exact And.intro E.holonomyCurvatureRelationClosed E.orderPreservedUnderHolonomyClosed

end DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean
end HautevilleHouse