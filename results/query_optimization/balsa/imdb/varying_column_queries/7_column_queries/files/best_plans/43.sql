/*+ NestLoop(title movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_info_idx,movie_keyword,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and movie_keyword.keyword_id<73096 and movie_info.info_type_id>1 and title.kind_id>1 and title.imdb_index=0 and title.season_nr=0 and title.phonetic_code>2852;

