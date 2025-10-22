/*+ HashJoin(movie_info_idx title cast_info movie_companies movie_info)
 NestLoop(movie_info_idx title cast_info movie_companies)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading(((((movie_info_idx title) cast_info) movie_companies) movie_info)) */
select count(*) from movie_info_idx,movie_companies,cast_info,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id=1 and cast_info.role_id=2 and movie_info.info_type_id<16 and title.imdb_index>0;

