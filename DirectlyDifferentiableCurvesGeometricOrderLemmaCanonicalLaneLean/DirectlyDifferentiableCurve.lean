import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean

structure DirectlyDifferentiableCurve (M : Type u) [TopologicalSpace M] [ChartedSpace ℝ M] [SmoothManifoldWithCorners ℝ M] where
  domain : Set ℝ
  curve : ℝ → M
  differentiable : DifferentiableOn ℝ curve domain

end DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean
end HautevilleHouse
