/*+ NestLoop(title movie_info_idx movie_info movie_keyword)
 NestLoop(title movie_info_idx movie_info)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 IndexScan(movie_keyword)
 Leading((((title movie_info_idx) movie_info) movie_keyword)) */
select count(*) from movie_info_idx,movie_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=99 and movie_info.info_type_id<16 and title.episode_nr<211 and title.production_year>82 and title.series_years<1057 and title.imdb_index=0;

