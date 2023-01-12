# Bowling Exercise (UX) 

## User Story 

### Title
Bowling Scoring Application 

### Description 

As a bowler, I want to be able to enter a list of bowling frame scores so that I can see the progress and total score of my game.  

### Acceptance Criteria

* I will have a place to enter a series of scores per frame. 
* A strike is scored as defined below. 
* A spare is scored as defined below. 
* An incomplete game is scored up to the last frame provided. 

## Information 

Please read through the following and develop a solution to complete the user story.  

This activity is intended to assess your skills in UX, design and interface development. This could include everything from creating wireframes/prototypes to implementing fully functioning application interfaces. Your deliverable should reflect the skill sets you have along this spectrum and will help us understand your strengths. 

Should you choose to build upon your prototype/interface and turn it into a working application, the next section provides you with a backend implementation containing the logic for scoring a bowling game. 

## Score Calculation 

To make it easier for you to enhance the functionality of your prototype/interface, we’ve provided the following API which implements the logic for calculating bowling scores, accessible by the URL below: 

https://bowling-function20210908100310.azurewebsites.net /api/CalculateBowlingScore/<frame scores> 

The frame scores are added to the end of the URL. The following inputs are allowed per roll: 
* Roll: ‘0-9’ 
* Spare: ‘S’ 
* Strike: ‘X’ 

You will need to use the following API key on your request by adding it as a query string: 

https://bowling-function20210908100310.azurewebsites.net/api/CalculateBowlingScore/<frame scores>?code=93HAamqSqMBMDD1DxkxqXsZ/T7aR6vFYoKKhwqEgPLZIzidZ6cgBEg== 

 

### Example 

https://bowling-function20210908100310.azurewebsites.net/api/CalculateBowlingScore/23x4s/?code=93HAamqSqMBMDD1DxkxqXsZ/T7aR6vFYoKKhwqEgPLZIzidZ6cgBEg== 

 

In this example, the bowler knocked down 2 pins on the first roll of the first frame and 3 pins on the second roll of the first frame. They earned a strike on the 2nd frame and then a spare on the 3rd by knocking down 4 pins on the first roll and then the remaining 6 on the second roll.   

 

The API would return the following JSON for this example: 

{ 

    "score": 25, 

    "error": null 

} 

 

## Definitions 

### Frame 

A frame consists of 2 opportunities to knock down 10 bowling pins with a bowling ball.  The 10 pins are then reset for the next frame.   

## How to Score 

### Strike 

* If you knock down all 10 pins in the first shot of a frame, you get a strike. 
* A strike earns 10 points plus the sum of your next two shots. 

### Spare 

* If you knock down all 10 pins using both shots of a frame, you get a spare. 
* A spare earns 10 points plus the sum of your next one shot. 

### Open Frame 

* If you do not knock down all 10 pins using both shots of your frame (9 or fewer pins knocked down), you have an open frame. 
* An open frame only earns the number of pins knocked down. 

### The 10th Frame 

The 10th frame is a bit different: 
* If you roll a strike in the first shot of the 10th frame, you get 2 more shots. 
* If you roll a spare in the first two shots of the 10th frame, you get 1 more shot. 
* If you leave the 10th frame open after two shots, the game is over and you do not get an additional shot. 
* The score for the 10th frame is the total number of pins knocked down in the 10th frame. 

 
Some definitions from http://www.fryes4fun.com/Bowling/scoring.htm 
