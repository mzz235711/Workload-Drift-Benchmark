/*+ HashJoin(movie_info movie_keyword title movie_info_idx)
 MergeJoin(movie_keyword title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info (movie_keyword (title movie_info_idx)))) */
select count(*) from movie_info,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.kind_id<7 and title.episode_nr<17 and title.production_year<126;

