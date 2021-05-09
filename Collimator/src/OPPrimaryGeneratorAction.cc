#include "OPPrimaryGeneratorAction.hh"

#include "G4LogicalVolumeStore.hh"
#include "G4LogicalVolume.hh"
#include "G4Box.hh"
#include "G4RunManager.hh"
#include "G4GeneralParticleSource.hh"
#include "G4ParticleTable.hh"
#include "G4ParticleDefinition.hh"
#include "G4SystemOfUnits.hh"
#include "Randomize.hh"

OPPrimaryGeneratorAction::OPPrimaryGeneratorAction()
: G4VUserPrimaryGeneratorAction()
{
  fParticleGun = new G4GeneralParticleSource();
}

OPPrimaryGeneratorAction::~OPPrimaryGeneratorAction()
{
  delete fParticleGun;
}

void OPPrimaryGeneratorAction::GeneratePrimaries(G4Event* anEvent)
{
  //this function is called at the begining of each event

  fParticleGun -> GeneratePrimaryVertex(anEvent);
}