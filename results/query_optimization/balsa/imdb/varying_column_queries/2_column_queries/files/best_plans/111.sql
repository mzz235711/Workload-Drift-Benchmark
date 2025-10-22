/*+ HashJoin(cast_info title movie_info_idx movie_info movie_companies)
 NestLoop(cast_info title movie_info_idx movie_info)
 NestLoop(cast_info title movie_info_idx)
 HashJoin(cast_info title)
 IndexScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 Leading(((((cast_info title) movie_info_idx) movie_info) movie_companies)) */
select count(*) from movie_info,cast_info,movie_companies,movie_info_idx,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id>99 and title.imdb_index<1;

