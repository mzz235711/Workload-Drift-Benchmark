/*+ NestLoop(movie_info title movie_info_idx movie_companies cast_info)
 HashJoin(movie_info title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((movie_info ((title movie_info_idx) movie_companies)) cast_info)) */
select count(*) from movie_companies,cast_info,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id<2 and cast_info.role_id>3 and movie_info.info_type_id<17 and title.imdb_index=0 and title.production_year>126;

