instance creation
max: aMaxValue min: aMinValue actualValue: anActualValue
|bar|
bar := self new: aMaxValue.
bar setMin: aMinValue.
bar setActualValue: anActualValue.
^bar.

