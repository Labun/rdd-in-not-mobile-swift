import AppKit

enum Sentiment {
  case neutral
  case positive
  case negative

  var emoji: String {
    switch self {
    case .neutral:
      return "😐"
    case .positive:
      return "😃"
    case .negative:
      return "😔"
    }
  }

  var color: NSColor? {
    switch self {
    case .neutral:
      return NSColor.blue
    case .positive:
      return NSColor.green
    case .negative:
      return NSColor.red
    }
  }
}
