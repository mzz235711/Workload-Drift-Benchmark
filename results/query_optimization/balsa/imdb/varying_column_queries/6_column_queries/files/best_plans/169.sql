/*+ NestLoop(title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_companies) cast_info)) */
select count(*) from cast_info,movie_companies,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order>3 and movie_companies.company_type_id=2 and movie_info_idx.info_type_id<101 and title.kind_id>1 and title.episode_nr>0 and title.production_year>121;

