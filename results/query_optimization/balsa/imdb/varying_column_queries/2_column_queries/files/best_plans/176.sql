/*+ HashJoin(movie_info movie_keyword movie_info_idx title)
 HashJoin(movie_keyword movie_info_idx title)
 MergeJoin(movie_info_idx title)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info (movie_keyword (movie_info_idx title)))) */
select count(*) from movie_info,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>3 and title.production_year<126;

