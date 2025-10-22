/*+ HashJoin(cast_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
select count(*) from cast_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order>1 and title.imdb_index=0 and title.phonetic_code>9930 and title.kind_id>1 and title.season_nr>0;

