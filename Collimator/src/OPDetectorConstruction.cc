#include "OPDetectorConstruction.hh"


#include "G4RunManager.hh"
#include "G4NistManager.hh"
#include "G4Box.hh"
#include "G4Tubs.hh"
#include "G4LogicalVolume.hh"
#include "G4PVPlacement.hh"
#include "G4SystemOfUnits.hh"

#include "G4SubtractionSolid.hh"
#include "G4MultiUnion.hh"

#include "G4VisAttributes.hh"


#include "G4GeometryManager.hh"
#include "G4PhysicalVolumeStore.hh"
#include "G4LogicalVolumeStore.hh"
#include "G4SolidStore.hh"

#include "G4RotationMatrix.hh"

OPDetectorConstruction::OPDetectorConstruction()
: G4VUserDetectorConstruction(){
}

OPDetectorConstruction::~OPDetectorConstruction()
{
}

G4VPhysicalVolume* OPDetectorConstruction::Construct()
  {  

// ----------------------------------------------------------- 
// ------------------- Material Definitions ------------------
  //elements
    G4Element* elN = new G4Element("Nitrogen","N", 7., 14.007*g/mole);
    G4Element* elO = new G4Element("Oxygen","O", 8.,16.00*g/mole);
    G4Element* elSi = new G4Element ("Silicon","Si",14., 28.0855*g/mole);
    G4Element* elH = new G4Element("Hydrogen", "H", 1., 1.008*g/mole);
    G4Element* elC = new G4Element("Carbon", "C" , 6., 12.011*g/mole);

  //define materials
    G4NistManager* nist = G4NistManager::Instance();
    
    //world_mat
    G4Material* world_mat = nist->FindOrBuildMaterial("G4_AIR");
    /*
    //G4Material* world_mat = new G4Material("rareAir", 1.20479e-7*mg/cm3, 2, kStateGas, 298.18*kelvin); // 공기밀도 1기압에서 1.18mg/cm3 -> 로터리펌프는 최대 10^-4 torr = 1.31578947e-7*atm
    world_mat->AddElement(elN, 70.0*perCent);
    world_mat->AddElement(elO, 30.0*perCent);
    */

    //vacDet_mat = SiO2;
    G4Material* vacDet_mat = nist->FindOrBuildMaterial("G4_Galactic");

    //target_mat = Au;
    G4Material* target_mat = nist->FindOrBuildMaterial("G4_Au");
    
    //collimator_mat
    G4Material* PLA = new G4Material("Polylatic",1.3*g/cm3, 3);
    
    //PLA
    G4int natoms;
    PLA->AddElement(elC, natoms=3);
    PLA->AddElement(elH, natoms=4);
    PLA->AddElement(elO, natoms=2);

// ------------------- Material Definitions end ------------------    
// ---------------------------------------------------------------

/*
//  CleanUp Geometry for Rebuilding (for using Messenger Method)
    G4GeometryManager::GetInstance()->OpenGeometry();
    G4PhysicalVolumeStore::GetInstance()->Clean();
    G4LogicalVolumeStore::GetInstance()->Clean();
    G4SolidStore::GetInstance()->Clean();

    std::cout << "cleaned up "<< std::endl;
*/

// ---------------------------------------------------------------
// ------------------- Definition of Geometric variables ----------------------- 
  //  macroscophic sizes
    G4double world_size = 400.*mm;

  // Box parameters    
    G4double ALPIDE_length_x = 30.*mm;
    G4double ALPIDE_length_y = 15.*mm;
    G4double ALPIDE_thc = 1.*mm;
 
  //target paramaters
    G4double target_length_x = 15.*mm;
    G4double target_length_y = 10.*mm;
    G4double target_thc = 1.*um;

  //aperture parameters
    G4double aperture_length_x = 180.*mm;
    G4double aperture_length_y = 28.5*mm;
    G4double aperture_thickness = 8*mm;  //aperture_thickness
    

// ------------------- Geometric variables end ----------------------- 
// ------------------------------------------------------------------


// ------------------------------------------------------------------
// ------------------- Definition of Geometry ----------------------- 
  // -----------------------------------------------------
  // World

    G4Box* solidWorld =    
      new G4Box("World",                       // its name
                0.5*world_size,                // half x
                0.5*world_size,                // half y
                0.5*world_size);               // half z
        
    G4LogicalVolume* logicWorld =                         
      new G4LogicalVolume(solidWorld,          //its solid
                          world_mat,           //its material
                          "World");            //its name
                                     
    G4VPhysicalVolume* physWorld = 
      new G4PVPlacement(0,                     //no rotation
                        G4ThreeVector(),       //at (0,0,0)
                        logicWorld,          //its logical volume
                        "World",               //its name
                        0,                     //its mother  volume
                        false,                 //no boolean operation
                        0,                     //copy number
                        true);                 //overlaps checking

    G4VisAttributes* visWorld = new G4VisAttributes();
    visWorld->SetForceWireframe();
    logicWorld->SetVisAttributes(visWorld);

  // -----------------------------------------------------
  // -------------- Vacuum Detector (ALPIDE)-----------------------------------
    G4Box* solidVacDetector =    
      new G4Box("VacuumDetector",
                ALPIDE_length_x/2,
                ALPIDE_length_y/2,
                ALPIDE_thc/2);
  
    G4LogicalVolume* logicVacDetector =                         
      new G4LogicalVolume(solidVacDetector,
                          vacDet_mat,
                          "VacuumDetector");
    
    G4VisAttributes* visDet = new G4VisAttributes();
    visDet->SetColour(0.7, 0.4, 0.2); 
    visDet->SetForceSolid();
    logicVacDetector->SetVisAttributes(visDet);

    //---------------------------------------------------------
    //--------------- Target(gold leaf)---------------------------------------
    G4Box* solidTarget =
      new G4Box("GoldLeaf",
                target_length_x/2,
                target_length_y/2,
                target_thc/2);
    
    G4LogicalVolume* logicTarget =
      new G4LogicalVolume(solidTarget,
                          target_mat,
                          "GoldLeaf");

    G4VisAttributes* visTarget = new G4VisAttributes();
    visTarget->SetColour(0.7, 0.7, 0.2); 
    visTarget->SetForceSolid();
    logicTarget->SetVisAttributes(visTarget);


//------------------------- aperture --------------------------
//-------------------------------------------------------------

    auto solid_Pb_plate =
      new G4Box("Pbplate",
                    aperture_length_x/2,
                    aperture_length_y/2,
                    aperture_thickness/2);
    
    auto hole1 =
      new G4Tubs("hole1",
                  0,6.5*mm,3*mm,0,2*M_PI);

    auto hole2 =
      new G4Tubs("hole2",
                  0,3.*mm,8.*mm,0,2*M_PI);

    auto solidAperture0 =
      new G4SubtractionSolid("solidAperture0", solid_Pb_plate, hole1, 0, G4ThreeVector(0,0,-4*mm));

    auto solidAperture =
      new G4SubtractionSolid("solidAperture", solidAperture0, hole2, 0, G4ThreeVector(0,0,-1*mm));

    auto logicAperture =
      new G4LogicalVolume(solidAperture,
                          PLA,
                          "aperture");

    G4VisAttributes* visAperture = new G4VisAttributes();
    visAperture->SetColour(0.2,0.2,0.2);
    visAperture->SetForceSolid();
    logicAperture->SetVisAttributes(visAperture);

// ------------------- Definition of Geometry end -----------------------    
// ------------------------------------------------------------------
  

//----------------------------------------------------------------
//----------------------- Definition of Position parameters --------------------

  //position with fixed source position  
  // ***trf is for macro. We have to fix the center of source for convenience. So, transform is "-position of the center of source" 
    //G4ThreeVector sourcePosVec = G4ThreeVector(0., 0., -l-d)+trf; // Center of particle source
    G4ThreeVector vacDet_posVec = G4ThreeVector(0,0,5.5*mm);
    G4ThreeVector target_posVec = G4ThreeVector(0,0,0);
    //G4ThreeVector aperture_posVec = G4ThreeVector(0.,0.,-5-aperture_thickness/2-ALPIDE_thc); // If we set d=2, aperture is at the front of the gap. If we set d=3, aperture is at the center of the gap.
    G4ThreeVector aperture_posVec = G4ThreeVector(0,0,-100);
// --------------------------------------------------------------- 
// --------------------- Placements ----------------------------
    
    //G4RotationMatrix *rot = new G4RotationMatrix(3.14159265/2,3.14159265/2,3.14159265/2);

    new G4PVPlacement(0,
                  vacDet_posVec,
                  logicVacDetector,
                  "VacuumDetector1",
                  logicWorld,
                  false,
                  1,
                  true);


    new G4PVPlacement(0,
                  target_posVec,
                  logicTarget,
                  "GoldLeaf",
                  logicWorld,
                  false,
                  2,
                  true);

    new G4PVPlacement(0,
                      aperture_posVec,
                      logicAperture,
                      "aperture",
                      logicWorld,
                      true,
                      6,
                      true);

return physWorld;
}