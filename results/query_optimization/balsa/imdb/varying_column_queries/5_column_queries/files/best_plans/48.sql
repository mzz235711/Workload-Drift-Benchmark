/*+ NestLoop(title movie_companies movie_keyword cast_info)
 HashJoin(title movie_companies movie_keyword)
 HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_keyword) cast_info)) */
select count(*) from movie_companies,movie_keyword,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id=2 and cast_info.nr_order>1 and title.kind_id>1 and title.phonetic_code<16924 and title.imdb_index>0;

