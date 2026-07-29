import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean

structure ConnectionPackage {G : GeometricOrderPackage} where
  connection : Type u
  parallelTransport : connection → G.manifold → G.manifold → Prop
  connectionCompatible : Prop
  curvatureDetermined : Prop
  orderParallel : Prop

structure ConnectionEvidence {G : GeometricOrderPackage} (C : ConnectionPackage) where
  connectionCompatibleClosed : C.connectionCompatible
  curvatureDeterminedClosed : C.curvatureDetermined
  orderParallelClosed : C.orderParallel

def ConnectionClosed {G : GeometricOrderPackage} (C : ConnectionPackage) : Prop :=
  C.connectionCompatible ∧ C.curvatureDetermined ∧ C.orderParallel

theorem connection_closed_from_evidence {G : GeometricOrderPackage} (C : ConnectionPackage) (E : ConnectionEvidence C) : ConnectionClosed C := by
  exact And.intro E.connectionCompatibleClosed (And.intro E.curvatureDeterminedClosed E.orderParallelClosed)

end DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean
end HautevilleHouse