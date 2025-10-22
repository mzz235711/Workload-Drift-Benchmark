/*+ HashJoin(movie_info movie_info_idx movie_keyword title)
 HashJoin(movie_info_idx movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_info (movie_info_idx (movie_keyword title)))) */
select count(*) from movie_info,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<98 and movie_keyword.keyword_id<18662 and title.episode_nr>0 and title.production_year>69;

