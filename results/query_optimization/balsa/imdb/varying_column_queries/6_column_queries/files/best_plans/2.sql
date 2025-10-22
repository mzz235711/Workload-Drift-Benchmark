/*+ NestLoop(title movie_keyword movie_info_idx cast_info movie_info)
 NestLoop(title movie_keyword movie_info_idx cast_info)
 HashJoin(title movie_keyword movie_info_idx)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((title movie_keyword) movie_info_idx) cast_info) movie_info)) */
select count(*) from movie_keyword,cast_info,movie_info_idx,movie_info,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id<101 and movie_info.info_type_id>2 and title.production_year>111 and title.imdb_index>0 and title.kind_id>1 and title.phonetic_code>2267;

