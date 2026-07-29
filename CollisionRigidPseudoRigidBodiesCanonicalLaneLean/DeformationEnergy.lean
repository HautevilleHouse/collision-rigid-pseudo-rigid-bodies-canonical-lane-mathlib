import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CollisionRigidPseudoRigidBodiesCanonicalLaneLean.CollisionRigidBodyModel

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesCanonicalLaneLean

structure DeformationEnergyBundle where
  kineticEnergy : ℝ
  strainEnergy : ℝ
  dissipationRate : ℝ
  totalEnergy : ℝ

def kineticEnergy (m : ℝ) (v : ℝ³) (I : Mat₃ ℝ) (ω : ℝ³) : ℝ :=
  0.5 * m * ‖v‖² + 0.5 * (ω ⬝ (I • ω))

def dissipation (dampingCoeff : ℝ) (strainRate : ℝ³) : ℝ :=
  dampingCoeff * ‖strainRate‖²

end CollisionRigidPseudoRigidBodiesCanonicalLaneLean
end HautevilleHouse