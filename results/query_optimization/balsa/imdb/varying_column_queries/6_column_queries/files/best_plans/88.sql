/*+ MergeJoin(cast_info movie_info_idx title movie_keyword)
 NestLoop(movie_info_idx title movie_keyword)
 MergeJoin(movie_info_idx title)
 SeqScan(cast_info)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((cast_info ((movie_info_idx title) movie_keyword))) */
select count(*) from movie_keyword,movie_info_idx,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>813 and movie_info_idx.info_type_id=101 and cast_info.nr_order>3 and title.phonetic_code<9039 and title.production_year>97 and title.kind_id=1;

