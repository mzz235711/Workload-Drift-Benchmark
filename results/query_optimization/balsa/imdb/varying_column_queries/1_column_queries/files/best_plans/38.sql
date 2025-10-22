/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 IndexScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
select count(*) from movie_keyword,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.season_nr<12;

