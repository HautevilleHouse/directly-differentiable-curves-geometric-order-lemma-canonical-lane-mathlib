import canonicalLaneMathlib.AdmissibleClass
import DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean.DirectlyDifferentiableCurve

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean

structure CurvatureInvariantPackage (M : Type u) [TopologicalSpace M] [ChartedSpace ℝ M] [SmoothManifoldWithCorners ℝ M] where
  curve : DirectlyDifferentiableCurve M
  curvatureInvariant : Prop
  invariantPreservedUnderReparameterization : Prop

structure CurvatureInvariantEvidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M] [SmoothManifoldWithCorners ℝ M] (C : CurvatureInvariantPackage M) where
  curvatureInvariantClosed : C.curvatureInvariant
  invariantPreservedUnderReparameterizationClosed : C.invariantPreservedUnderReparameterization

def CurvatureInvariantClosed {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M] [SmoothManifoldWithCorners ℝ M] (C : CurvatureInvariantPackage M) : Prop :=
  C.curvatureInvariant ∧ C.invariantPreservedUnderReparameterization

theorem curvature_invariant_closed_from_evidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M] [SmoothManifoldWithCorners ℝ M] (C : CurvatureInvariantPackage M) (E : CurvatureInvariantEvidence C) : CurvatureInvariantClosed C := by
  exact And.intro E.curvatureInvariantClosed E.invariantPreservedUnderReparameterizationClosed

end DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean
end HautevilleHouse
