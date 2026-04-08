public static class LineUp
{

    public static string Format(string name, int number)
    {
        // if (number % 100 != 11 && number % 10 == 1) return $"{name}, you are the {number}st customer we serve today. Thank you!";
        // if (number % 100 != 12 && number % 10 == 2) return $"{name}, you are the {number}nd customer we serve today. Thank you!";
        // if (number % 100 != 13 && number % 10 == 3) return $"{name}, you are the {number}rd customer we serve today. Thank you!";
        //
        // return $"{name}, you are the {number}th customer we serve today. Thank you!";

        string sulfix = (number % 100) switch
        {
            11 or 12 or 13 => "th",
            _ => (number % 10) switch
            {
                1 => "st",
                2 => "nd",
                3 => "rd",
                _ => "th"
            }
        };

        return $"{name}, you are the {number}{sulfix} customer we serve today. Thank you!";
    }
}
