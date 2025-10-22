/*+ NestLoop(title movie_info_idx movie_companies movie_info cast_info)
 NestLoop(title movie_info_idx movie_companies movie_info)
 MergeJoin(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading(((((title movie_info_idx) movie_companies) movie_info) cast_info)) */
select count(*) from cast_info,movie_info,movie_companies,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id=2 and movie_info.info_type_id<16 and movie_companies.company_type_id>1 and title.episode_nr<24 and title.kind_id<7 and title.imdb_index>0 and title.production_year>74;

