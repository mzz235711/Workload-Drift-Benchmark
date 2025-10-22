/*+ HashJoin(movie_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_info)
 IndexScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info (movie_info_idx title))) */
select count(*) from movie_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.series_years<1403;

