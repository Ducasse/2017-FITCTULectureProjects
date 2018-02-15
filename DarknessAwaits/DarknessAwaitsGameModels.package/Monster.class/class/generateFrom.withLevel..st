as yet unclassified
generateFrom: template withLevel: level
| instance |

instance:= self new.

"TODO = scale with level"

^instance attributes: (template attributes);
			health: (template health);
			name: (template name);
			picturePath: (template picturePath);
			movementSpeed: (template movementSpeed);
			attackRange: (template attackRange);
			damage: (template damage).