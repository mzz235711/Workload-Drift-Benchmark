/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.episode_nr<6277 and title.season_nr=0 and title.production_year<127 and title.series_years<826;

