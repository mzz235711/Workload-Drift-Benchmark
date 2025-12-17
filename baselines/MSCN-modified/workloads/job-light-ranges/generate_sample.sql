-- 从原始表随机选择 1000 行，生成新表，并添加自增 ID 列
CREATE TABLE title_sample AS
SELECT * FROM title
ORDER BY random()
LIMIT 1000;

-- 添加自增主键列
ALTER TABLE title_sample
ADD COLUMN tid SERIAL PRIMARY KEY;

-- 从原始表随机选择 1000 行，生成新表，并添加自增 ID 列
CREATE TABLE cast_info_sample AS
SELECT * FROM cast_info
ORDER BY random()
LIMIT 1000;

-- 添加自增主键列
ALTER TABLE cast_info_sample
ADD COLUMN ciid SERIAL PRIMARY KEY;

-- 从原始表随机选择 1000 行，生成新表，并添加自增 ID 列
CREATE TABLE movie_companies_sample AS
SELECT * FROM movie_companies
ORDER BY random()
LIMIT 1000;

-- 添加自增主键列
ALTER TABLE movie_companies_sample
ADD COLUMN mcid SERIAL PRIMARY KEY;

-- 从原始表随机选择 1000 行，生成新表，并添加自增 ID 列
CREATE TABLE movie_info_idx_sample AS
SELECT * FROM movie_info_idx
ORDER BY random()
LIMIT 1000;

-- 添加自增主键列
ALTER TABLE movie_info_idx_sample
ADD COLUMN miiid SERIAL PRIMARY KEY;

-- 从原始表随机选择 1000 行，生成新表，并添加自增 ID 列
CREATE TABLE movie_info_sample AS
SELECT * FROM movie_info
ORDER BY random()
LIMIT 1000;

-- 添加自增主键列
ALTER TABLE movie_info_sample
ADD COLUMN miid SERIAL PRIMARY KEY;

-- 从原始表随机选择 1000 行，生成新表，并添加自增 ID 列
CREATE TABLE movie_keyword_sample AS
SELECT * FROM movie_keyword
ORDER BY random()
LIMIT 1000;

-- 添加自增主键列
ALTER TABLE movie_keyword_sample
ADD COLUMN mkid SERIAL PRIMARY KEY;


