#ifndef OPSTEPPINGACTION_HH
#define OPSTEPPINGACTION_HH

#include "G4UserSteppingAction.hh"
#include "G4Step.hh"
#include "globals.hh"
#include "g4root.hh"

class OPSteppingAction : public G4UserSteppingAction
{
  public:
    OPSteppingAction();
    virtual ~OPSteppingAction();

    // method from the base class
    virtual void UserSteppingAction(const G4Step*);
};

#endif