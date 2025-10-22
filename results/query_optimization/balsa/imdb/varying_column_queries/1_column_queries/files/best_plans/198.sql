/*+ HashJoin(cast_info movie_keyword movie_companies title)
 HashJoin(movie_keyword movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_keyword (movie_companies title)))) */
select count(*) from movie_keyword,movie_companies,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.episode_nr<226;

