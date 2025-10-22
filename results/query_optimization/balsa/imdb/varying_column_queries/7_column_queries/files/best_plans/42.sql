/*+ MergeJoin(cast_info movie_keyword title movie_companies movie_info)
 NestLoop(movie_keyword title movie_companies movie_info)
 MergeJoin(movie_keyword title movie_companies)
 NestLoop(movie_keyword title)
 IndexScan(cast_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 Leading((cast_info (((movie_keyword title) movie_companies) movie_info))) */
select count(*) from movie_companies,movie_keyword,movie_info,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id<2 and movie_keyword.keyword_id>47 and cast_info.nr_order>23 and title.series_years<897 and title.kind_id<2 and title.production_year<95 and title.imdb_index>0;

