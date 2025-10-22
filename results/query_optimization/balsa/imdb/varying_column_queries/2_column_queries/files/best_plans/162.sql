/*+ HashJoin(movie_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((movie_info (movie_keyword title))) */
select count(*) from movie_keyword,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.phonetic_code<19422 and title.kind_id=7;

