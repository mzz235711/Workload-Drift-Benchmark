/*+ NestLoop(title movie_info_idx movie_companies movie_info cast_info)
 NestLoop(title movie_info_idx movie_companies movie_info)
 MergeJoin(title movie_info_idx movie_companies)
 MergeJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading(((((title movie_info_idx) movie_companies) movie_info) cast_info)) */
select count(*) from movie_info_idx,movie_info,movie_companies,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id=99 and movie_info.info_type_id<16 and movie_companies.company_type_id=2 and title.phonetic_code>14988 and title.imdb_index=0 and title.series_years>0 and title.production_year>85;

