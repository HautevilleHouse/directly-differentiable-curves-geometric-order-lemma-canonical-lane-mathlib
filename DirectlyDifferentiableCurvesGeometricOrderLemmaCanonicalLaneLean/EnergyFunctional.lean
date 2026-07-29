import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean

structure EnergyFunctionalPackage where
  curveSpace : Type u
  energy : (curveSpace) → ℝ
  positivity : ∀ c, energy c ≥ 0
  lowerSemicontinuous : Prop
  coercivity : Prop
  existenceMinimizer : Prop

def EnergyFunctionalClosed (E : EnergyFunctionalPackage) : Prop :=
  E.positivity E.energy ∧ E.lowerSemicontinuous ∧ E.coercivity ∧ E.existenceMinimizer

end DirectlyDifferentiableCurvesGeometricOrderLemmaCanonicalLaneLean
end HautevilleHouse
