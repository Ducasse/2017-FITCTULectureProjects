TODO: delete this class

For /Move request use this example JSON:
{
  "you": "2c4d4d70-8cca-48e0-ac9d-03ecafca0c98",
  "width": 2,
  "turn": 0,
  "snakes": [
    {
      "taunt": "git gud",
      "name": "my-snake",
      "id": "2c4d4d70-8cca-48e0-ac9d-03ecafca0c98",
      "health_points": 93,
      "coords": [
        [
          0,
          0
        ],
        [
          0,
          0
        ],
        [
          0,
          0
        ]
      ]
    },
    {
      "taunt": "gotta go fast",
      "name": "other-snake",
      "id": "c35dcf26-7f48-492c-b7b5-94ae78fbc713",
      "health_points": 50,
      "coords": [
        [
          1,
          0
        ],
        [
          1,
          0
        ],
        [
          1,
          0
        ]
      ]
    }
  ],
  "height": 2,
  "game_id": "a2facef2-b031-44ba-a36c-0859c389ef96",
  "food": [
    [
      1,
      1
    ]
  ],
  "dead_snakes": [
    {
      "taunt": "gotta go fast",
      "name": "other-snake",
      "id": "83fdf2b9-c8d0-44f4-acb2-0c506139079e",
      "health_points": 50,
      "coords": [
        [
          5,
          0
        ],
        [
          5,
          0
        ],
        [
          5,
          0
        ]
      ]
    }
  ]
}
---
For /Start use this JSON:
{"width": 20,"height": 20,"game_id": "b1dadee8-a112-4e0e-afa2-2845cd1f21aa"}