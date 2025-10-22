/*+ MergeJoin(title cast_info movie_companies movie_keyword movie_info)
 MergeJoin(title cast_info movie_companies movie_keyword)
 MergeJoin(title cast_info movie_companies)
 MergeJoin(title cast_info)
 SeqScan(title)
 SeqScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((((title cast_info) movie_companies) movie_keyword) movie_info)) */
select count(*) from cast_info,movie_info,movie_companies,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order<52 and movie_keyword.keyword_id<3311 and title.production_year>123;

