static class AssemblyLine
{
    public static double SuccessRate(int speed)
    {
        if (speed <= 0) return 0.0;
        if (speed <= 4) return 1.0;
        if (speed <= 8) return 0.9;
        if (speed == 9) return 0.8;
        return 0.77;
    }
    
    public static double ProductionRatePerHour(int speed)
    {
        if (speed <= 0) return 0.0;
        if (speed <= 4)
        {
            return 221 * speed;
        } else if (speed <= 8)
        {
            return (221 * speed) * 0.9;
        } else if (speed == 9)
        {
            return (221 * speed) * 0.8;
        }

        return (221 * speed) *  0.77;
    }

    public static int WorkingItemsPerMinute(int speed)
    {
        if (speed <= 0) return 0;
        if (speed <= 4)
        {
            return (221 * speed) / 60;
        } else if (speed <= 8)
        {
            return (int)((221 * speed) * 0.9) / 60;
        } else if (speed == 9)
        {
            return (int)((221 * speed) * 0.8) / 60;
        }
        return (int)((221 * speed) * 0.77) / 60;
    }
}
