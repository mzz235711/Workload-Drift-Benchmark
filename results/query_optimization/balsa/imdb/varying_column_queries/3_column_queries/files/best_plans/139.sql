/*+ NestLoop(title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_info_idx) cast_info)) */
select count(*) from movie_companies,movie_info_idx,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.season_nr<8 and title.series_years>0 and title.kind_id<7;

