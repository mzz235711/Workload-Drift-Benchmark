/*+ HashJoin(title movie_info_idx movie_info movie_companies cast_info)
 NestLoop(title movie_info_idx movie_info movie_companies)
 NestLoop(title movie_info_idx movie_info)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(cast_info)
 Leading(((((title movie_info_idx) movie_info) movie_companies) cast_info)) */
select count(*) from cast_info,movie_info_idx,movie_companies,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and cast_info.role_id=9 and movie_info.info_type_id>2 and title.series_years>1336 and title.imdb_index=0;

