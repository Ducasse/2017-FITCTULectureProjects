private
styleString: aString
^ aString asRopedText attributes: {
    BrTextForegroundAttribute paint: Color white.
    BrFontSizeAttribute size: 14.
}.