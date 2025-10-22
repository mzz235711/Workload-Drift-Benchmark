/*+ HashJoin(cast_info movie_companies movie_info_idx title movie_info)
 HashJoin(cast_info movie_companies movie_info_idx title)
 HashJoin(movie_companies movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info)
 Leading(((cast_info (movie_companies (movie_info_idx title))) movie_info)) */
select count(*) from movie_info,movie_companies,cast_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and title.production_year>121;

