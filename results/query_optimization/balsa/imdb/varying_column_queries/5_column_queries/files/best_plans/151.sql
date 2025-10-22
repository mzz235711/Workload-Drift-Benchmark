/*+ HashJoin(movie_info title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((movie_info (title movie_keyword))) */
select count(*) from movie_keyword,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>875 and title.season_nr=0 and title.phonetic_code<16946 and title.kind_id=1 and title.production_year>114;

