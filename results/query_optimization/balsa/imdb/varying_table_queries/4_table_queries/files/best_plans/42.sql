/*+ HashJoin(cast_info title movie_companies movie_info)
 HashJoin(cast_info title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((cast_info (title movie_companies)) movie_info)) */
select count(*) from cast_info,movie_companies,movie_info,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and cast_info.role_id=2 and title.kind_id<7 and title.imdb_index=0;

