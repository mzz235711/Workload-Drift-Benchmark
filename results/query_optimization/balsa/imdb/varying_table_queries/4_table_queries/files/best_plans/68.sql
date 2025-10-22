/*+ HashJoin(cast_info title movie_companies movie_info)
 HashJoin(cast_info title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((cast_info (title movie_companies)) movie_info)) */
select count(*) from movie_companies,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>1 and title.imdb_index=0 and title.episode_nr>1;

