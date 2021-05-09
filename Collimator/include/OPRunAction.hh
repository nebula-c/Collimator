#ifndef OPRUNACTION_HH
#define OPRUNACTION_HH

#include "G4UserRunAction.hh"
#include "G4Run.hh"
#include "globals.hh"
#include "g4root.hh"

class OPRunAction : public G4UserRunAction
{
  public:
    OPRunAction();
    OPRunAction(const char *);
    virtual ~OPRunAction();

    // method from the base class
    virtual void BeginOfRunAction(const G4Run*);
    virtual void EndOfRunAction(const G4Run*);

    void SetAnalysis();

  private:
    G4String fName;
};

#endif