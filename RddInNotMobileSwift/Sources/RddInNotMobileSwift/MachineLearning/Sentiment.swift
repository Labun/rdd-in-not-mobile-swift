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
}
