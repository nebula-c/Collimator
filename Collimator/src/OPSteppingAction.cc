#include "OPSteppingAction.hh"

#include "G4Event.hh"
#include "G4RunManager.hh"
#include "G4SystemOfUnits.hh"


OPSteppingAction::OPSteppingAction()
: G4UserSteppingAction()
{
}

OPSteppingAction::~OPSteppingAction()
{
}

void OPSteppingAction::UserSteppingAction(const G4Step* step)
{
  G4int eventID = G4RunManager::GetRunManager() -> GetCurrentEvent() -> GetEventID();


  G4int volumeID = step -> GetPreStepPoint() -> GetPhysicalVolume() -> GetCopyNo();
  G4double totalEdep = step -> GetTotalEnergyDeposit();
  
  G4int particleID = step-> GetTrack()->GetParticleDefinition()->GetParticleDefinitionID();
  G4String particleName = step-> GetTrack()->GetParticleDefinition()->GetParticleName();
  G4StepPoint* prePoint = step -> GetPreStepPoint();
  G4StepPoint* postPoint = step -> GetPostStepPoint();

  G4ThreeVector prePosition = prePoint -> GetPosition();
  G4ThreeVector preMomentum = prePoint->GetMomentum();
    
  G4ThreeVector postPosition = postPoint->GetPosition();
  G4ThreeVector postMomentum = postPoint ->GetMomentum();

  G4AnalysisManager* analysisManager = G4AnalysisManager::Instance();
  analysisManager -> FillNtupleIColumn(0, eventID);
  analysisManager -> FillNtupleIColumn(1, volumeID);
  analysisManager -> FillNtupleIColumn(2, particleID);
  analysisManager -> FillNtupleSColumn(3, particleName);

  analysisManager -> FillNtupleDColumn(4, prePosition.x());
  analysisManager -> FillNtupleDColumn(5, prePosition.y());
  analysisManager -> FillNtupleDColumn(6, prePosition.z());

  analysisManager -> FillNtupleDColumn(7, preMomentum.x());
  analysisManager -> FillNtupleDColumn(8, preMomentum.y());
  analysisManager -> FillNtupleDColumn(9, preMomentum.z());

  analysisManager -> FillNtupleDColumn(10, totalEdep);
  analysisManager -> AddNtupleRow();
}