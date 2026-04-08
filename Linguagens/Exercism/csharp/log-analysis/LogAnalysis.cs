public static class LogAnalysis 
{
    // TODO: define the 'SubstringAfter()' extension method on the `string` type
    public static string SubstringAfter(this string str, string after) => str.Split(after)[1].Trim();

    // TODO: define the 'SubstringBetween()' extension method on the `string` type
    public static string SubstringBetween(this string str, string between) =>  str.Split(between)[0].Trim();
    
    // TODO: define the 'Message()' extension method on the `string` type
    public static string Message(this string str) => str.Split();

    // TODO: define the 'LogLevel()' extension method on the `string` type

}