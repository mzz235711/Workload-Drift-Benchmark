/*+ HashJoin(cast_info title movie_keyword movie_info)
 MergeJoin(cast_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((cast_info (title movie_keyword)) movie_info)) */
select count(*) from movie_info,cast_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order>1 and title.phonetic_code<1094 and title.kind_id>1;

