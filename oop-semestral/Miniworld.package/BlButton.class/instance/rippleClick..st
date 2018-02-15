private
rippleClick: aPosition
self ripple: aPosition targetColor: self baseColor onFinishedDo: [ :ripple | ripple parent removeChild: ripple]