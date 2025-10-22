/*+ HashJoin(cast_info title movie_companies movie_info_idx movie_keyword)
 HashJoin(cast_info title movie_companies movie_info_idx)
 HashJoin(cast_info title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 SeqScan(movie_keyword)
 Leading((((cast_info (title movie_companies)) movie_info_idx) movie_keyword)) */
select count(*) from movie_info_idx,movie_companies,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order<4100 and title.kind_id<7 and title.imdb_index>0 and title.season_nr<1;

