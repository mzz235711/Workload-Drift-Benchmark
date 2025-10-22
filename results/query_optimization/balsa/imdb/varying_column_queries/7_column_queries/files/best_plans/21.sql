/*+ NestLoop(title movie_info_idx movie_companies movie_info cast_info)
 NestLoop(title movie_info_idx movie_companies movie_info)
 MergeJoin(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading(((((title movie_info_idx) movie_companies) movie_info) cast_info)) */
select count(*) from movie_info_idx,movie_companies,cast_info,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and movie_companies.company_type_id<2 and cast_info.role_id<9 and movie_info.info_type_id>1 and title.phonetic_code<15668 and title.imdb_index=0 and title.series_years>0;

