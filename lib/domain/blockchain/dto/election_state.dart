

enum ElectionState {
  NOT_CREATED,
  CREATED,
  ONGOING,
  CONCLUDED,
}

ElectionState stateFromString(String string) {
  switch (string) {
    case "created":
      return ElectionState.CREATED;
    case "ongoing":
      return ElectionState.ONGOING;
    case "concluded":
      return ElectionState.CONCLUDED;
    default:
      return ElectionState.NOT_CREATED;
  }
}
