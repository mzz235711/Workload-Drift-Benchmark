/*+ HashJoin(cast_info movie_companies movie_info title movie_info_idx)
 HashJoin(movie_companies movie_info title movie_info_idx)
 HashJoin(movie_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_companies (movie_info (title movie_info_idx))))) */
select count(*) from movie_companies,movie_info_idx,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.role_id>1 and movie_info.info_type_id>4 and title.series_years>0 and title.imdb_index=0;

