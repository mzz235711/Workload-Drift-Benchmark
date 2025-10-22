/*+ HashJoin(movie_keyword movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(movie_keyword)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_keyword (movie_companies title))) */
select count(*) from movie_companies,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.episode_nr<21;

