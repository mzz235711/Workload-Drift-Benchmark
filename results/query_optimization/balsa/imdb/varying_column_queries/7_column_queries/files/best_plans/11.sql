/*+ NestLoop(title movie_companies movie_info cast_info)
 NestLoop(title movie_companies movie_info)
 MergeJoin(title movie_companies)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_info) cast_info)) */
select count(*) from movie_companies,movie_info,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id>1 and movie_info.info_type_id<16 and cast_info.role_id<8 and title.season_nr>0 and title.series_years>0 and title.kind_id>4 and title.imdb_index=0;

