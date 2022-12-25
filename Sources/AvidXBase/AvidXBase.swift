@main
public struct AvidXBase {
    public private(set) var text = "Hello, World!"

    public static func main() {
        print(AvidXBase().text)
    }
}
