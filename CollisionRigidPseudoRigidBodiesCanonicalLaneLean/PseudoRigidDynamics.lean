import CollisionRigidPseudoRigidBodiesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesCanonicalLaneLean

structure PseudoRigidDynamicsPackage where
  deformationModel : Type
  strainEnergy : Type
  inertiaTensor : Type
  pseudoRigidEquations : Prop
  contactLaw : Prop

structure PseudoRigidDynamicsEvidence (D : PseudoRigidDynamicsPackage) where
  pseudoRigidEquationsClosed : D.pseudoRigidEquations
  contactLawClosed : D.contactLaw

def PseudoRigidDynamicsClosed (D : PseudoRigidDynamicsPackage) : Prop :=
  D.pseudoRigidEquations ∧ D.contactLaw

theorem pseudo_rigid_dynamics_closed_from_evidence (D : PseudoRigidDynamicsPackage)
    (E : PseudoRigidDynamicsEvidence D) : PseudoRigidDynamicsClosed D := by
  exact And.intro E.pseudoRigidEquationsClosed E.contactLawClosed

end CollisionRigidPseudoRigidBodiesCanonicalLaneLean
end HautevilleHouse
