#ifndef OPDETECTORCONSTRUCTION_HH
#define OPDETECTORCONSTRUCTION_HH

#include "G4VUserDetectorConstruction.hh"
#include "globals.hh"

class G4VPhysicalVolume;
class G4LogicalVolume;

class OPDetectorConstruction : public G4VUserDetectorConstruction
{

  public:
    OPDetectorConstruction();
   ~OPDetectorConstruction();

    virtual G4VPhysicalVolume* Construct();

};

#endif