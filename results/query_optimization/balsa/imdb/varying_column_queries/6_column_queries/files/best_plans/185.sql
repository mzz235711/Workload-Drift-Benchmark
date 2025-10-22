/*+ NestLoop(title movie_info_idx cast_info movie_keyword movie_info)
 NestLoop(title movie_info_idx cast_info movie_keyword)
 NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((((title movie_info_idx) cast_info) movie_keyword) movie_info)) */
select count(*) from movie_info,movie_keyword,movie_info_idx,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>2 and cast_info.role_id=3 and title.kind_id<7 and title.production_year<112 and title.series_years>0 and title.phonetic_code>20552;

