/*+ HashJoin(cast_info movie_keyword title movie_companies)
 HashJoin(movie_keyword title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info (movie_keyword (title movie_companies)))) */
select count(*) from movie_companies,movie_keyword,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.phonetic_code>0;

