import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean

def ConstrainedGeometricOrderClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrainedGeometricOrderEndgame (A : AdmissibleClass) : ConstrainedGeometricOrderClosure A := by
  exact And.intro (bridgeFromAdmissibleClass A) (gateFromAdmissibleClass A)

end DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean
end HautevilleHouse
