/*+ NestLoop(title movie_info_idx movie_info movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_info movie_companies)
 NestLoop(title movie_info_idx movie_info)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading(((((title movie_info_idx) movie_info) movie_companies) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,movie_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.season_nr<2 and title.imdb_index>0 and title.series_years>0;

