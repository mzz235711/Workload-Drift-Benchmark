/*+ NestLoop(title movie_companies movie_info_idx cast_info)
 HashJoin(title movie_companies movie_info_idx)
 HashJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_info_idx) cast_info)) */
select count(*) from movie_info_idx,movie_companies,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id<101 and movie_companies.company_type_id=1 and cast_info.role_id=7 and title.phonetic_code>15678 and title.season_nr<5 and title.kind_id<7;

