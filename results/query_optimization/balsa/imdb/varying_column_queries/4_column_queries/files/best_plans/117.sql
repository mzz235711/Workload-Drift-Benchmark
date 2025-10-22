/*+ HashJoin(cast_info title movie_info_idx movie_companies movie_info)
 HashJoin(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading((cast_info (((title movie_info_idx) movie_companies) movie_info))) */
select count(*) from movie_info_idx,movie_companies,movie_info,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id<101 and movie_companies.company_type_id<2 and title.phonetic_code>5566 and title.kind_id>2;

