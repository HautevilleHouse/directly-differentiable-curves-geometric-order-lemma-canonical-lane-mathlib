import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean

structure IndexTheoremPackage {G : GeometricOrderPackage} {C : CurvatureComparisonPackage} {Con : ConnectionPackage} where
  indexInvariant : Type u
  indexCalculation : indexInvariant → Prop
  geometricOrderIndex : Prop
  indexWellDefined : Prop

structure IndexTheoremEvidence {G : GeometricOrderPackage} {C : CurvatureComparisonPackage} {Con : ConnectionPackage} (I : IndexTheoremPackage) where
  indexCalculationClosed : I.indexCalculation
  geometricOrderIndexClosed : I.geometricOrderIndex
  indexWellDefinedClosed : I.indexWellDefined

def IndexTheoremClosed {G : GeometricOrderPackage} {C : CurvatureComparisonPackage} {Con : ConnectionPackage} (I : IndexTheoremPackage) : Prop :=
  I.indexCalculation ∧ I.geometricOrderIndex ∧ I.indexWellDefined

theorem index_theorem_closed_from_evidence {G : GeometricOrderPackage} {C : CurvatureComparisonPackage} {Con : ConnectionPackage} (I : IndexTheoremPackage) (E : IndexTheoremEvidence I) : IndexTheoremClosed I := by
  exact And.intro E.indexCalculationClosed (And.intro E.geometricOrderIndexClosed E.indexWellDefinedClosed)

end DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean
end HautevilleHouse