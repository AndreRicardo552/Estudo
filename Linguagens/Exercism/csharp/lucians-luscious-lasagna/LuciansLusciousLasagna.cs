class Lasagna
{
    // TODO: define the 'ExpectedMinutesInOven()' method
    public int ExpectedMinutesInOven() => 40;

    // TODO: define the 'RemainingMinutesInOven()' method
    public int RemainingMinutesInOven(int time){
        if(time <= 0) {
            return ExpectedMinutesInOven();
        }

        return ExpectedMinutesInOven() - time;
    }

    // TODO: define the 'PreparationTimeInMinutes()' method
    public int PreparationTimeInMinutes(int layers){
        
        if(layers <= 0) {
            return ExpectedMinutesInOven();
        }

        return layers * 2;
    }

    // TODO: define the 'ElapsedTimeInMinutes()' method
    public int ElapsedTimeInMinutes(int layers, int inOven) {

        if(layers <= 0 || inOven <= 0) {
            return 0;
        }

        return PreparationTimeInMinutes(layers) + inOven;
    }
}
