/*+ HashJoin(cast_info movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies movie_info)
 HashJoin(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 IndexScan(movie_info_idx)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 Leading((cast_info (((movie_info_idx title) movie_companies) movie_info))) */
select count(*) from movie_companies,movie_info,cast_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id>1 and title.phonetic_code>11692;

