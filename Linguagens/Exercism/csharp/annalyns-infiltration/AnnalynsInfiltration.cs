static class QuestLogic
{
    public static bool CanFastAttack(bool knightIsAwake){

        if (!knightIsAwake) {
            return true;
        }

        return false;
        // throw new NotImplementedException("Please implement the (static) QuestLogic.CanFastAttack() method");
    }

    public static bool CanSpy(bool knightIsAwake, bool archerIsAwake, bool prisonerIsAwake){

        if(knightIsAwake || archerIsAwake || prisonerIsAwake) {
            return true;
        }

        return false;

        //throw new NotImplementedException("Please implement the (static) QuestLogic.CanSpy() method");
    }

    public static bool CanSignalPrisoner(bool archerIsAwake, bool prisonerIsAwake){

        if (archerIsAwake) 
            return false;
        if (!prisonerIsAwake)
            return false;

        return true;

        //throw new NotImplementedException("Please implement the (static) QuestLogic.CanSignalPrisoner() method");
    }

    public static bool CanFreePrisoner(bool knightIsAwake, bool archerIsAwake, bool prisonerIsAwake, bool petDogIsPresent)
    {

        
        if(petDogIsPresent && !archerIsAwake) 
            return true;
        if(!prisonerIsAwake)
            return false;
        if(!knightIsAwake && !archerIsAwake)
            return true;


        return false;

        //throw new NotImplementedException("Please implement the (static) QuestLogic.CanFreePrisoner() method");
    }
}
