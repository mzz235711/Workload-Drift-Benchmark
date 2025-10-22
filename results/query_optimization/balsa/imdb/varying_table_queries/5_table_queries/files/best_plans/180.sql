/*+ HashJoin(title cast_info movie_companies movie_info_idx movie_info)
 NestLoop(title cast_info movie_companies movie_info_idx)
 HashJoin(title cast_info movie_companies)
 HashJoin(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 SeqScan(movie_info)
 Leading(((((title cast_info) movie_companies) movie_info_idx) movie_info)) */
select count(*) from movie_info,cast_info,movie_companies,movie_info_idx,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id<104 and cast_info.role_id=10 and movie_companies.company_type_id=2 and title.imdb_index=0;

