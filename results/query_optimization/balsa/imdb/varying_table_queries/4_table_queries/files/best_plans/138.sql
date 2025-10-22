/*+ NestLoop(movie_companies title cast_info movie_info)
 NestLoop(movie_companies title cast_info)
 MergeJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((movie_companies title) cast_info) movie_info)) */
select count(*) from cast_info,movie_companies,movie_info,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and cast_info.role_id>1 and movie_info.info_type_id<98 and title.imdb_index>0 and title.phonetic_code>14082;

