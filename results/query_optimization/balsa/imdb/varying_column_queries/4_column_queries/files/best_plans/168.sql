/*+ HashJoin(cast_info movie_info movie_companies title)
 HashJoin(movie_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_info (movie_companies title)))) */
select count(*) from movie_companies,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id=1 and movie_info.info_type_id>16 and title.season_nr>0 and title.production_year<118;

