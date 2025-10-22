/*+ NestLoop(title movie_info_idx movie_companies movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((((title movie_info_idx) movie_companies) movie_keyword) movie_info)) */
select count(*) from movie_info,movie_info_idx,movie_keyword,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.production_year>87 and title.imdb_index>0 and title.kind_id>1 and title.season_nr=0;

