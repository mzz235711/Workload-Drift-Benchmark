/*+ HashJoin(movie_companies title cast_info movie_info movie_keyword)
 NestLoop(movie_companies title cast_info movie_info)
 NestLoop(movie_companies title cast_info)
 NestLoop(movie_companies title)
 IndexScan(movie_companies)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_companies title) cast_info) movie_info) movie_keyword)) */
select count(*) from cast_info,movie_companies,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id<2 and movie_info.info_type_id<18 and title.production_year>124 and title.imdb_index=0 and title.phonetic_code<3991 and title.kind_id>1;

