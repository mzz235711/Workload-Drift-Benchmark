/*+ HashJoin(movie_info title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx cast_info)
 HashJoin(title movie_companies movie_info_idx)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_companies) movie_info_idx) cast_info))) */
select count(*) from movie_companies,movie_info,cast_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id<2 and movie_info.info_type_id>16 and title.kind_id<7 and title.production_year>124 and title.phonetic_code>16043;

