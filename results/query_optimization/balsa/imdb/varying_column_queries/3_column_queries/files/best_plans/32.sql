/*+ NestLoop(movie_companies title cast_info movie_info)
 NestLoop(movie_companies title cast_info)
 NestLoop(movie_companies title)
 SeqScan(movie_companies)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((movie_companies title) cast_info) movie_info)) */
select count(*) from movie_info,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and cast_info.role_id<10 and movie_companies.company_type_id=2 and title.kind_id=7;

