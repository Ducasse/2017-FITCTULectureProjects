graphics
drawOn: aCanvas position: aPosition
| font textPainter metrics baseline origin |

aCanvas fill
    path: (aPosition extent: (self drawSize));
    paint: playerOwner color ;
draw.

"draw text"	
	font := aCanvas font
		size: 12;
		build.

	textPainter := aCanvas text
		font: font;
		paint: Color white;
		string: self count asString.
	
	metrics := textPainter measure.
	
	origin := aPosition + (((self drawSize) / 2)).
	baseline := origin - metrics textMetrics bounds origin.
	
	textPainter
		baseline: baseline;
		draw