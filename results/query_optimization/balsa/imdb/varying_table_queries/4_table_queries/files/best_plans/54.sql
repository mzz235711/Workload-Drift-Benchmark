/*+ NestLoop(title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_companies) cast_info)) */
select count(*) from movie_info_idx,cast_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and cast_info.role_id=1 and movie_companies.company_type_id<2 and title.kind_id<7 and title.imdb_index>0 and title.production_year>80 and title.episode_nr<26;

