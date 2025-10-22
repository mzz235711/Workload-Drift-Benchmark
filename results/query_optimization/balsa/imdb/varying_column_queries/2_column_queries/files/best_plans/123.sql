/*+ HashJoin(cast_info movie_companies movie_info_idx title)
 HashJoin(movie_companies movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((cast_info (movie_companies (movie_info_idx title)))) */
select count(*) from cast_info,movie_info_idx,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and cast_info.role_id=1 and title.production_year<127;

