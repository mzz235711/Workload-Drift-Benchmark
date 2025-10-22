/*+ NestLoop(title movie_keyword movie_info_idx movie_info)
 NestLoop(title movie_keyword movie_info_idx)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading((((title movie_keyword) movie_info_idx) movie_info)) */
select count(*) from movie_info,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<106 and movie_keyword.keyword_id<38978 and title.series_years>0 and title.phonetic_code>5976 and title.imdb_index>0 and title.season_nr=0;

