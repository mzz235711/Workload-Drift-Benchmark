/*+ HashJoin(title movie_keyword)
 IndexScan(title)
 SeqScan(movie_keyword)
 Leading((title movie_keyword)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id<54327 and title.season_nr=0 and title.phonetic_code<18005;

