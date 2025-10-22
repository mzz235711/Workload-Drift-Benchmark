/*+ HashJoin(movie_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 Leading((movie_info (title movie_keyword))) */
select count(*) from movie_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<94 and title.kind_id<7 and title.phonetic_code>0 and title.imdb_index=0;

