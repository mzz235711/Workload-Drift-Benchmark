/*+ HashJoin(movie_info_idx title movie_info cast_info movie_companies)
 NestLoop(movie_info_idx title movie_info cast_info)
 HashJoin(movie_info_idx title movie_info)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 SeqScan(movie_companies)
 Leading(((((movie_info_idx title) movie_info) cast_info) movie_companies)) */
select count(*) from movie_info,cast_info,movie_info_idx,movie_companies,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id>2 and title.season_nr<16;

