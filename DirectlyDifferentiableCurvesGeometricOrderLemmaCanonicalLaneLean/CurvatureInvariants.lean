import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean

structure CurvatureInvariantPackage where
  curvatureForm : Type u
  torsionForm : Type v
  structuralEquation : Prop
  curvatureCompatibility : Prop
  invariantOrder : Prop

structure CurvatureInvariantEvidence (C : CurvatureInvariantPackage) where
  structuralEquationClosed : C.structuralEquation
  curvatureCompatibilityClosed : C.curvatureCompatibility
  invariantOrderClosed : C.invariantOrder

def CurvatureInvariantClosed (C : CurvatureInvariantPackage) : Prop :=
  C.structuralEquation ∧ C.curvatureCompatibility ∧ C.invariantOrder

theorem curvature_invariant_closed_from_evidence (C : CurvatureInvariantPackage)
    (E : CurvatureInvariantEvidence C) : CurvatureInvariantClosed C := by
  exact And.intro E.structuralEquationClosed
    (And.intro E.curvatureCompatibilityClosed E.invariantOrderClosed)

end DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean
end HautevilleHouse
