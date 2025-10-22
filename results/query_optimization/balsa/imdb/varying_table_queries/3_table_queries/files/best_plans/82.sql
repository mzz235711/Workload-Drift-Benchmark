/*+ NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.season_nr>0 and title.series_years<195 and title.episode_nr<49;

