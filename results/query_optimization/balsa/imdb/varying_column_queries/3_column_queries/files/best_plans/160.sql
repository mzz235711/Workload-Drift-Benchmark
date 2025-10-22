/*+ HashJoin(movie_info movie_keyword title movie_info_idx)
 MergeJoin(movie_keyword title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info (movie_keyword (title movie_info_idx)))) */
select count(*) from movie_info,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<106 and title.phonetic_code>0 and title.season_nr=0;

