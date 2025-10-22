/*+ HashJoin(movie_info movie_keyword title movie_companies)
 HashJoin(movie_keyword title movie_companies)
 HashJoin(movie_keyword title)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_companies)
 Leading((movie_info ((movie_keyword title) movie_companies))) */
select count(*) from movie_companies,movie_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.phonetic_code>0 and title.kind_id=7;

