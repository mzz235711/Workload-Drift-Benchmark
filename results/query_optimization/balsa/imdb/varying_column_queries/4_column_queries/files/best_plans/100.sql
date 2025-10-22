/*+ HashJoin(movie_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(title)
 Leading((movie_info (movie_companies title))) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.kind_id=7 and title.episode_nr>0 and title.production_year<126 and title.season_nr<5;

