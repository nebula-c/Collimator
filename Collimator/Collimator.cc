#include "globals.hh"

#include "G4RunManager.hh"
#include "G4VisExecutive.hh"
#include "G4UImanager.hh"
#include "G4UIExecutive.hh"

#include "QGSP_BERT.hh"
#include "OPDetectorConstruction.hh"
#include "OPPrimaryGeneratorAction.hh"
#include "OPRunAction.hh"
#include "OPSteppingAction.hh"

int main(int argc, char** argv)
{
  G4Random::setTheSeed(time(0));
  G4RunManager* runManager = new G4RunManager;

  G4VModularPhysicsList* physicsList = new QGSP_BERT;
  runManager -> SetUserInitialization(physicsList);
  runManager -> SetUserInitialization(new OPDetectorConstruction());
  runManager -> SetUserAction(new OPPrimaryGeneratorAction());
  if(argc != 1)
    runManager -> SetUserAction(new OPRunAction(argv[1]));
  else
    runManager -> SetUserAction(new OPRunAction());
  runManager -> SetUserAction(new OPSteppingAction());
  runManager -> Initialize();
  
  G4VisManager* visManager = new G4VisExecutive;
  visManager -> Initialize();

  G4UImanager* UImanager = G4UImanager::GetUIpointer();
  if (argc != 1) 
  {
    G4String command = "/control/execute ";
    G4String fileName = argv[1];
    UImanager -> ApplyCommand(command+fileName);
  }
  else 
  {
    G4UIExecutive* ui = new G4UIExecutive(argc, argv);
    UImanager -> ApplyCommand("/control/execute vis.mac"); 
    ui -> SessionStart();
    delete ui;
  }

  delete visManager;
  delete runManager;

  return 0;
}