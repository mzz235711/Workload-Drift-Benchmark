/*+ HashJoin(movie_info movie_companies movie_info_idx title)
 HashJoin(movie_companies movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_info)
 SeqScan(movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info (movie_companies (movie_info_idx title)))) */
select count(*) from movie_companies,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id<107 and title.production_year<118;

