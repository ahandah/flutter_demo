

class LogUtils {

  static final String TOP_CORNER     = "┌";
  static final String MIDDLE_CORNER  = "├";
  static final String LEFT_BORDER    = "│ ";
  static final String BOTTOM_CORNER  = "└";
  static final String SIDE_DIVIDER   =
      "────────────────────────────────────────────────────────";
  static final String MIDDLE_DIVIDER =
      "┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄";

  static d(Object o) {
    print("Log-start" + SIDE_DIVIDER);
    print(LEFT_BORDER + "   " + o.toString());
    print("Log-end--" + SIDE_DIVIDER);
  }
  
  
}