# Full Stack Developer

At StrongMind we work in terms of user stories with varying degrees of requirements along with lots of feedback cycles.  We feel the best way to measure how someone would work with our team is to simulate self-organized work.  The following steps make up the technical interview. Any language/framework for submissions is acceptable. Python or Ruby preferred.

1. Create a GitHub repository for this project.  
2. Complete the stories below.
3. Deploy application
3. Email development@strongmind.com links to your application repository and working deployed application with the subject “**Full Stack Developer Candidate - Your Name**"

# Bowling Exercise

## Bowling Scoring
As a bowler, I should be able to keep track by frame of one of games.
* it should allow entry of score by frame
* it should score strikes properly (see below)
* it should score spares properly (see below)
* it should score an incomplete game up to the last frame provided.


*Bonus:* Create APIs For Game
# Bowling API

## Bowling Game Create, Read, Update, Delete
As a bowler I should be able to create, read, update and delete a game.
* it should respond to the following requests:
  * POST /api/games/ (create game)
  * DELETE /api/games/{:id} (delete game)
  * GET /api/games/{:id} (read game)
  * PUT /api/games/{:id} (update game)
* it should have the following attributes:
  * id
  * name

## Frame Score Create, Read, Update, Delete
As a bowler I should be able to create, read, update and delete a shot of a game.
* it should respond to the following requests:
  * POST /api/games/{:game_id}/shots (create frame)
  * DELETE /api/games/{:game_id}/shots/{:id} (delete frame)
  * GET /api/games/{:game_id}/shots/{:id} (read frame)
  * PUT /api/games/{:game_id}/shots/{:id} (update frame)
* it should have the following attributes:
  * id
  * pins_knocked_down

## Frame Scoring
A frame consists of 2 opportunities to knock down 10 bowling pins with a bowling ball.  The 10 pins are then reset for the next frame

### Strike
If you knock down all 10 pins in the first shot of a frame, you get a strike.
**Score:** A strike earns 10 points plus the sum of your next two shots.

### Spare
If you knock down all 10 pins using both shots of a frame, you get a spare.
**Score:** A spare earns 10 points plus the sum of your next one shot.

### Open Frame
If you do not knock down all 10 pins using both shots of your frame, you have an open frame.
**Score:** An open frame only earns the number of pins knocked down.

### 10th Frame
The 10th frame is a bit different.  
* If you roll a strike in the first shot of the 10th frame, you get 2 more shorts.  
* If you roll a spare in the first two shots, you get 1 more shot.
* If you leave the 10th frame open after two shots, the game is over and you do not get an additional shot.
**Score:**
The score for the 10th frame is the total number of pins knocked down in the 10th frame.

More scoring details can be found [here](http://www.fryes4fun.com/Bowling/scoring.htm).
