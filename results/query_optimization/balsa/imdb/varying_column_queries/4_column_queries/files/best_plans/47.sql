/*+ HashJoin(cast_info movie_info_idx movie_keyword title movie_companies)
 NestLoop(movie_info_idx movie_keyword title movie_companies)
 HashJoin(movie_info_idx movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info ((movie_info_idx (movie_keyword title)) movie_companies))) */
select count(*) from movie_keyword,movie_companies,movie_info_idx,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and cast_info.nr_order<33 and title.episode_nr<13 and title.imdb_index>0 and title.series_years>0;

