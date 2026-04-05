using System.Reflection.Metadata;

public static class LogAnalysis {
    // TODO: define the 'SubstringAfter()' extension method on the `string` type
    public static string SubstringAfter(this string s, string ch) => s.Split(ch)[1];

    // TODO: define the 'SubstringBetween()' extension method on the `string` type
    public static string SubstringBetween(this string s, string ch, string ch1) => s.Split(ch)[1].Split(ch1)[0];

    // TODO: define the 'Message()' extension method on the `string` type
    public static string Message(this string s) => s.Split(": ")[1];

    // TODO: define the 'LogLevel()' extension method on the `string` type
    public static string LogLevel(this string s) => s.Split("[")[1].Split("]")[0];
}