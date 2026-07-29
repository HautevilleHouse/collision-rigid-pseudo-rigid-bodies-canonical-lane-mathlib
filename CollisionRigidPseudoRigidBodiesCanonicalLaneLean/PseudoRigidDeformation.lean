import CollisionRigidPseudoRigidBodiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesCanonicalLaneLean

structure PseudoRigidDeformationPackage where
  complianceMatrix : Type u
  dampingCoeff : Prop
  deformationEnergy : Prop
  shapeRestoration : Prop

structure PseudoRigidDeformationEvidence (D : PseudoRigidDeformationPackage) where
  dampingCoeffClosed : D.dampingCoeff
  deformationEnergyClosed : D.deformationEnergy
  shapeRestorationClosed : D.shapeRestoration

def PseudoRigidDeformationClosed (D : PseudoRigidDeformationPackage) : Prop :=
  D.dampingCoeff ∧ D.deformationEnergy ∧ D.shapeRestoration

theorem pseudo_rigid_deformation_closed_from_evidence (D : PseudoRigidDeformationPackage)
    (E : PseudoRigidDeformationEvidence D) : PseudoRigidDeformationClosed D := by
  exact And.intro E.dampingCoeffClosed (And.intro E.deformationEnergyClosed E.shapeRestorationClosed)

end CollisionRigidPseudoRigidBodiesCanonicalLaneLean
end HautevilleHouse