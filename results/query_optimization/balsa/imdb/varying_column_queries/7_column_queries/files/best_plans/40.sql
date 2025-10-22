/*+ NestLoop(movie_companies title movie_keyword movie_info cast_info)
 NestLoop(movie_companies title movie_keyword movie_info)
 NestLoop(movie_companies title movie_keyword)
 NestLoop(movie_companies title)
 SeqScan(movie_companies)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading(((((movie_companies title) movie_keyword) movie_info) cast_info)) */
select count(*) from cast_info,movie_info,movie_keyword,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order>1 and movie_info.info_type_id<16 and movie_keyword.keyword_id<117 and movie_companies.company_type_id<2 and title.imdb_index=0 and title.series_years>0 and title.production_year<59;

