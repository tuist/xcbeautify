import Foundation

class Regex {
    let pattern: String

    private lazy var regex: NSRegularExpression? = {
        let regex = try? NSRegularExpression(pattern: "^" + pattern, options: [.caseInsensitive])
        assert(regex != nil)
        return regex
    }()

    init(pattern: String) {
        self.pattern = pattern
    }

    func match(string: String) -> Bool {
        let fullRange = NSRange(string.startIndex..., in: string)
        return regex?.rangeOfFirstMatch(in: string, range: fullRange).location != NSNotFound
    }
}
