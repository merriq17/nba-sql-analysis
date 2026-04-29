# NBA 2023-2024 Statistical Analysis

## Overview
SQL-based analysis of NBA player statistics from the 2023-2024 season. 
This project explores scoring trends, shooting efficiency, and team 
composition using MySQL.

## Dataset
- **Source:** Kaggle — NBA Player Stats 2023-2024
- **Records:** Per-game averages for all players in the 2023-2024 season
- **Columns:** Player, Position, Age, Team, Games Played, Points, 
Assists, Rebounds, FG%, FT%, and more

## Questions Explored
1. Which teams averaged the most points per game?
2. Who were the top individual scorers in the league?
3. How does average roster age vary by team?
4. Which players were the most efficient field goal shooters?
5. Which players both scored and facilitated at an elite level?
6. Who were the best free throw shooters with meaningful volume?
7. How do stats differ across positions?
8. Which teams had the most high-volume scorers (20+ PPG)?

## Tools Used
- MySQL / MySQL Workbench
- Kaggle (dataset source)

## Key Findings
- The Lakers led the league in average team scoring
- Point guards led all positions in assists as expected, 
but also ranked competitively in scoring
- Teams with younger rosters tended to score less on average

## Files
- `nba_analysis.sql` — All queries with comments
## Visualizations
Interactive dashboards built in Tableau Public:
https://public.tableau.com/profile/api/publish/NBAStats_17774746129150/Sheet4
