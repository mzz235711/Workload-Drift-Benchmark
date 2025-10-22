/*+ HashJoin(cast_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_companies title))) */
select count(*) from movie_companies,cast_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.production_year<124 and title.imdb_index=0 and title.phonetic_code>0 and title.season_nr=0;

