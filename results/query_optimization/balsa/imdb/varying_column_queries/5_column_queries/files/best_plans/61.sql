/*+ HashJoin(movie_info title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies cast_info)
 HashJoin(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_info_idx) movie_companies) cast_info))) */
select count(*) from movie_info,movie_companies,movie_info_idx,cast_info,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>2 and movie_companies.company_type_id<2 and title.phonetic_code<21052 and title.kind_id=7 and title.production_year<125;

