/*+ HashJoin(movie_info title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading((movie_info ((title movie_info_idx) movie_keyword))) */
select count(*) from movie_keyword,movie_info_idx,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id<10082 and movie_info_idx.info_type_id=99 and movie_info.info_type_id>2 and title.production_year>92 and title.season_nr=0;

