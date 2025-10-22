/*+ NestLoop(title movie_info_idx movie_info movie_keyword)
 NestLoop(title movie_info_idx movie_info)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 IndexScan(movie_keyword)
 Leading((((title movie_info_idx) movie_info) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.series_years<1347 and title.kind_id>1 and title.episode_nr<130 and title.season_nr<7;

