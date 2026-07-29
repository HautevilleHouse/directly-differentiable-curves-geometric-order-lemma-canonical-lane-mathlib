import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean

structure CurvatureComparisonPackage {G : GeometricOrderPackage} where
  curvatureInvariant : Type u
  curvatureComparison : curvatureInvariant → curvatureInvariant → Prop
  comparisonTransitive : Prop
  comparisonReflexive : Prop
  orderPreserved : Prop

structure CurvatureComparisonEvidence {G : GeometricOrderPackage} (C : CurvatureComparisonPackage) where
  comparisonTransitiveClosed : C.comparisonTransitive
  comparisonReflexiveClosed : C.comparisonReflexive
  orderPreservedClosed : C.orderPreserved

def CurvatureComparisonClosed {G : GeometricOrderPackage} (C : CurvatureComparisonPackage) : Prop :=
  C.comparisonTransitive ∧ C.comparisonReflexive ∧ C.orderPreserved

theorem curvature_comparison_closed_from_evidence {G : GeometricOrderPackage} (C : CurvatureComparisonPackage) (E : CurvatureComparisonEvidence C) : CurvatureComparisonClosed C := by
  exact And.intro E.comparisonTransitiveClosed (And.intro E.comparisonReflexiveClosed E.orderPreservedClosed)

end DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean
end HautevilleHouse