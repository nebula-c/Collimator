#ifndef OPPRIMARYGENERATORACTION_HH
#define OPPRIMARYGENERATORACTION_HH

#include "G4VUserPrimaryGeneratorAction.hh"
#include "G4GeneralParticleSource.hh"
#include "G4Event.hh"
#include "globals.hh"

class OPPrimaryGeneratorAction : public G4VUserPrimaryGeneratorAction
{
  public:
    OPPrimaryGeneratorAction();    
    virtual ~OPPrimaryGeneratorAction();

    // method from the base class
    virtual void GeneratePrimaries(G4Event*);         
  
  private:
    G4GeneralParticleSource*  fParticleGun; // pointer a to G4 gun class
};

#endif