/*+ HashJoin(cast_info title movie_info_idx movie_companies movie_info)
 NestLoop(cast_info title movie_info_idx movie_companies)
 NestLoop(cast_info title movie_info_idx)
 NestLoop(cast_info title)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading(((((cast_info title) movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_info,movie_info_idx,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<17 and title.production_year>77;

