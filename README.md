**Bowling_Game_Exercise**

Bowling club scoring system program in Ruby 2.4.1, test suite: [minittest](https://rubygems.org/gems/minitest/).

System features:
- One player
- 10 frames in a match
- 2 rolls per frame
- 10 pins in a frame

- If player does not knock down all pins in one frame, their score is the sum of the pins knocked down in the frame
- If player gets a spare (all pins knocked down in the frame using two rolls), their score is the sum of the pins knocked down in the frame plus in the next roll
- If player gets a strike (all pins knocked down first roll in frame), score is 10 plus the sum of the pins knocked down in the next frame
- In the last frame - if player bowls a spare, they get another bowl and the pins knocked down are added to their score
- In the last frame - if player bowls a strike, they get two further bowls and the pins knocked down are added to their score
- If player scores a strike on every roll, their score is 300