/*+ NestLoop(movie_info_idx title movie_keyword movie_info)
 NestLoop(movie_info_idx title movie_keyword)
 MergeJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((movie_info_idx title) movie_keyword) movie_info)) */
select count(*) from movie_info_idx,movie_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.phonetic_code>0 and title.imdb_index=0 and title.season_nr=4 and title.production_year<126;

