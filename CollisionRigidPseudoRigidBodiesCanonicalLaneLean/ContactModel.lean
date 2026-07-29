import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesCanonicalLaneLean

structure ContactModelPackage where
  contactType : Type u
  frictionModel : Type v
  restitutionCoefficient : Type w
  contactLaw : Prop
  frictionLaw : Prop
  restitutionLaw : Prop
  contactLawClosed : contactLaw
  frictionLawClosed : frictionLaw
  restitutionLawClosed : restitutionLaw

structure ContactModelEvidence (C : ContactModelPackage) where
  contactLawClosed : C.contactLaw
  frictionLawClosed : C.frictionLaw
  restitutionLawClosed : C.restitutionLaw

def ContactModelClosed (C : ContactModelPackage) : Prop :=
  C.contactLaw ∧ C.frictionLaw ∧ C.restitutionLaw

theorem contact_model_closed_from_evidence
    (C : ContactModelPackage) (E : ContactModelEvidence C) :
    ContactModelClosed C := by
  exact And.intro E.contactLawClosed (And.intro E.frictionLawClosed E.restitutionLawClosed)

end CollisionRigidPseudoRigidBodiesCanonicalLaneLean
end HautevilleHouse