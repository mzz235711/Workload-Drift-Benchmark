/*+ HashJoin(title movie_info_idx cast_info movie_keyword movie_info)
 HashJoin(title movie_info_idx cast_info movie_keyword)
 HashJoin(title movie_info_idx cast_info)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((((title movie_info_idx) cast_info) movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,cast_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<75656 and cast_info.nr_order<44 and movie_info_idx.info_type_id=99 and title.imdb_index=0 and title.season_nr=0 and title.kind_id=1 and title.phonetic_code<4372;

