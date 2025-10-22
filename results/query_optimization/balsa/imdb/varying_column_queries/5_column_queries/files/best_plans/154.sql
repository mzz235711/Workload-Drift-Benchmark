/*+ HashJoin(movie_info title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword cast_info)
 HashJoin(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_info_idx)
 SeqScan(movie_keyword)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_info_idx) movie_keyword) cast_info))) */
select count(*) from movie_info,movie_keyword,movie_info_idx,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<107 and movie_info_idx.info_type_id<101 and title.imdb_index=0 and title.season_nr=0 and title.phonetic_code<1450;

