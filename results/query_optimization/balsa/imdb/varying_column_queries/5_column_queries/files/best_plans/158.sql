/*+ HashJoin(title movie_info_idx movie_keyword movie_info)
 HashJoin(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(movie_info)
 Leading((((title movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id>242 and movie_info.info_type_id>2 and title.season_nr>1 and title.episode_nr<17 and title.production_year<117;

