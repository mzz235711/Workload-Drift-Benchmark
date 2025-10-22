/*+ HashJoin(movie_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(movie_info)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_info (movie_companies title))) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.episode_nr<256;

