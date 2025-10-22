/*+ HashJoin(cast_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_companies title))) */
select count(*) from cast_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id>1 and title.phonetic_code>1459 and title.season_nr<3;

