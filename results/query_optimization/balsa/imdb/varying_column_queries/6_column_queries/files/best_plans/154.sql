/*+ NestLoop(title movie_companies movie_info_idx movie_info)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading((((title movie_companies) movie_info_idx) movie_info)) */
select count(*) from movie_companies,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id>1 and movie_info.info_type_id>3 and title.phonetic_code<11852 and title.series_years>0 and title.kind_id<7 and title.imdb_index>0;

