/*+ NestLoop(title movie_info_idx movie_companies cast_info)
 MergeJoin(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 SeqScan(movie_companies)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_companies) cast_info)) */
select count(*) from movie_companies,cast_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id=2 and cast_info.nr_order>0 and movie_info_idx.info_type_id>99 and title.phonetic_code>16722 and title.series_years>0 and title.kind_id<4 and title.imdb_index=0;

