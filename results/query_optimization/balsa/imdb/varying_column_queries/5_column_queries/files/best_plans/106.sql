/*+ HashJoin(movie_keyword title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx cast_info)
 HashJoin(title movie_companies movie_info_idx)
 HashJoin(title movie_companies)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_keyword (((title movie_companies) movie_info_idx) cast_info))) */
select count(*) from cast_info,movie_companies,movie_info_idx,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order>1 and movie_keyword.keyword_id>3518 and title.kind_id<2 and title.series_years<1254 and title.imdb_index>0;

