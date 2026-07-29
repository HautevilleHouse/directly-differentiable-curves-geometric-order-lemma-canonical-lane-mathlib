import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean

structure Projection (S : Type) where
  toFun : S → S
  idempotent : ∀ x : S, toFun (toFun x) = toFun x

def curveProjection : Projection (AdmissibleClass) := {
  toFun := λ x => x
  idempotent := by intro x; rfl
}

theorem curve_projection_idempotent (x : AdmissibleClass) :
    curveProjection.toFun (curveProjection.toFun x) = curveProjection.toFun x := by
  exact curveProjection.idempotent x

end DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean
end HautevilleHouse