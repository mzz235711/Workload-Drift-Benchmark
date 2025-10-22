/*+ HashJoin(cast_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_keyword title))) */
select count(*) from cast_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id<75050 and title.phonetic_code<16278;

