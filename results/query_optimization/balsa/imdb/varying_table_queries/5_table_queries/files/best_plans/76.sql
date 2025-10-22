/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from movie_companies,movie_info_idx,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.kind_id=7 and title.episode_nr>0 and title.imdb_index=0;

