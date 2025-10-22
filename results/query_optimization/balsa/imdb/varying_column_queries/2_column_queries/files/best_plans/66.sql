/*+ HashJoin(movie_keyword title)
 IndexScan(movie_keyword)
 IndexScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id>50 and title.phonetic_code>10842;

