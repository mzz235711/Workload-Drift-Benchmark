/*+ MergeJoin(cast_info title movie_info movie_keyword)
 MergeJoin(title movie_info movie_keyword)
 MergeJoin(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading((cast_info ((title movie_info) movie_keyword))) */
select count(*) from cast_info,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id<83041 and movie_info.info_type_id<107 and title.production_year>109 and title.kind_id=1 and title.phonetic_code>16820 and title.season_nr=0;

