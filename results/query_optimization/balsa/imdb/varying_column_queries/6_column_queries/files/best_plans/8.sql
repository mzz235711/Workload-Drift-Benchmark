/*+ NestLoop(title movie_companies movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_companies movie_info_idx movie_keyword)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading(((((title movie_companies) movie_info_idx) movie_keyword) cast_info)) */
select count(*) from movie_keyword,movie_companies,cast_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id<2 and cast_info.role_id>1 and title.episode_nr<32 and title.imdb_index>0 and title.kind_id>1 and title.production_year<126;

