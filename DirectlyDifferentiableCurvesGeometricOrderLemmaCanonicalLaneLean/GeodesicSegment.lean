import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean

structure GeodesicSegmentPackage where
  curve : Type u
  domain : ℝ
  constantSpeed : Prop
  lengthMinimizing : Prop
  secondOrderODE : Prop
  existence : Prop
  uniqueness : Prop

def GeodesicSegmentClosed (G : GeodesicSegmentPackage) : Prop :=
  G.constantSpeed ∧ G.lengthMinimizing ∧ G.secondOrderODE ∧ G.existence ∧ G.uniqueness

end DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean
end HautevilleHouse
