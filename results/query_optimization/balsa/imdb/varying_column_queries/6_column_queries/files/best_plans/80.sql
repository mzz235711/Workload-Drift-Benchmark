/*+ NestLoop(title movie_info_idx movie_companies cast_info movie_info)
 NestLoop(title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((title movie_info_idx) movie_companies) cast_info) movie_info)) */
select count(*) from movie_info,cast_info,movie_companies,movie_info_idx,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id>1 and cast_info.role_id=5 and movie_info_idx.info_type_id=101 and title.imdb_index=0 and title.production_year>120 and title.episode_nr>0;

