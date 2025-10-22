/*+ HashJoin(title movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(movie_info)
 Leading((((title movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_info,movie_keyword,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id>2 and title.kind_id>1 and title.season_nr>0 and title.phonetic_code>6554 and title.production_year>118;

