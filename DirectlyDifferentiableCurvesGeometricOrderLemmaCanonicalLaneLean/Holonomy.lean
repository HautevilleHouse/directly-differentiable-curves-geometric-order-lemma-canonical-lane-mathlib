import canonicalLaneMathlib.AdmissibleClass
import DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean.ConnectionTheory

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean

structure HolonomyPackage {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M] [SmoothManifoldWithCorners ℝ M] (C : ConnectionTheoryPackage M) where
  holonomyGroup : Type v
  groupOperation : holonomyGroup → holonomyGroup → holonomyGroup
  groupIdentity : holonomyGroup
  closureUnderParallelTransport : Prop

structure HolonomyEvidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M] [SmoothManifoldWithCorners ℝ M] {C : ConnectionTheoryPackage M} (H : HolonomyPackage C) where
  closureUnderParallelTransportClosed : H.closureUnderParallelTransport

def HolonomyClosed {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M] [SmoothManifoldWithCorners ℝ M] {C : ConnectionTheoryPackage M} (H : HolonomyPackage C) : Prop :=
  H.closureUnderParallelTransport

theorem holonomy_closed_from_evidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M] [SmoothManifoldWithCorners ℝ M] {C : ConnectionTheoryPackage M} (H : HolonomyPackage C) (E : HolonomyEvidence H) : HolonomyClosed H := by
  exact E.closureUnderParallelTransportClosed

end DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean
end HautevilleHouse
