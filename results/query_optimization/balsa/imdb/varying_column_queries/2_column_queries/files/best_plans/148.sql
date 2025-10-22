/*+ HashJoin(movie_keyword title)
 IndexScan(movie_keyword)
 IndexScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.production_year<125 and title.phonetic_code<12227;

