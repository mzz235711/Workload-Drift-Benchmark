/*+ HashJoin(cast_info movie_info movie_companies title movie_info_idx)
 HashJoin(movie_info movie_companies title movie_info_idx)
 HashJoin(movie_companies title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_companies)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_info (movie_companies (title movie_info_idx))))) */
select count(*) from movie_info_idx,movie_info,cast_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id=100 and cast_info.role_id>1 and title.season_nr=0 and title.production_year>112;

