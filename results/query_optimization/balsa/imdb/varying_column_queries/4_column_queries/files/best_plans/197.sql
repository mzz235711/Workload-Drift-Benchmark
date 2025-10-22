/*+ HashJoin(movie_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(title)
 Leading((movie_info (movie_companies title))) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<16 and title.production_year>26 and title.imdb_index=0 and title.season_nr=0;

