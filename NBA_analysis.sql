-- NBA 2023-2024 Season Statistical Analysis
-- Dataset: Kaggle NBA Player Stats 2023-2024
-- Author: Merriq Shore

-- ================================================
-- ANALYSIS 1: Average points per game by team
-- Identifies the highest scoring teams in the league
-- ================================================
SELECT Tm, ROUND(AVG(PTS), 2) AS avg_points
FROM nba
GROUP BY Tm
ORDER BY avg_points DESC;

-- ================================================
-- ANALYSIS 2: Top 10 scorers in the league
-- Highlights individual scoring leaders
-- ================================================
SELECT Player, Tm, PTS
FROM nba
ORDER BY PTS DESC
LIMIT 10;

-- ================================================
-- ANALYSIS 3: Average roster age by team
-- Younger teams may indicate rebuilding, older teams contending
-- ================================================
SELECT Tm, ROUND(AVG(Age), 1) AS avg_age
FROM nba
GROUP BY Tm
ORDER BY avg_age ASC;

-- ================================================
-- ANALYSIS 4: Most efficient field goal shooters (min 10 games)
-- Filters out small sample sizes for meaningful efficiency data
-- ================================================
SELECT Player, Tm, `FG%`
FROM nba
WHERE G >= 10
ORDER BY `FG%` DESC
LIMIT 15;

-- ================================================
-- ANALYSIS 5: Players who score and facilitate (15+ PTS, 5+ AST)
-- Identifies true two-way offensive threats
-- ================================================
SELECT Player, Tm, PTS, AST
FROM nba
WHERE PTS >= 15 AND AST >= 5
ORDER BY PTS DESC;

-- ================================================
-- ANALYSIS 6: Best free throw shooters (min 3 attempts per game)
-- Filters for players with enough volume to be statistically meaningful
-- ================================================
SELECT Player, Tm, `FT%`
FROM nba
WHERE FTA >= 3
ORDER BY `FT%` DESC
LIMIT 10;

-- ================================================
-- ANALYSIS 7: Average stats by position
-- Shows how scoring, assists, and rebounds differ across positions
-- ================================================
SELECT Pos, ROUND(AVG(PTS), 2) AS avg_pts,
ROUND(AVG(AST), 2) AS avg_ast,
ROUND(AVG(TRB), 2) AS avg_reb
FROM nba
GROUP BY Pos
ORDER BY avg_pts DESC;

-- ================================================
-- ANALYSIS 8: Teams with the most high scorers (20+ PPG)
-- Highlights teams with elite offensive depth
-- ================================================
SELECT Tm, COUNT(*) AS star_players
FROM nba
WHERE PTS >= 20
GROUP BY Tm
ORDER BY star_players DESC;