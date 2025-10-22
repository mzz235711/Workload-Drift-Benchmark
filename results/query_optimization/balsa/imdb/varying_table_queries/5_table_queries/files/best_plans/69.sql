/*+ HashJoin(movie_companies title movie_info cast_info movie_keyword)
 NestLoop(movie_companies title movie_info cast_info)
 NestLoop(movie_companies title movie_info)
 HashJoin(movie_companies title)
 IndexScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_companies title) movie_info) cast_info) movie_keyword)) */
select count(*) from movie_info,cast_info,movie_companies,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id<2 and movie_keyword.keyword_id>434 and title.phonetic_code<6031 and title.season_nr>1 and title.kind_id=7 and title.production_year<95;

