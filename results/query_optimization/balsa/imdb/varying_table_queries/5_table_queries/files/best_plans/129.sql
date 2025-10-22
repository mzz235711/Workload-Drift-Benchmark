/*+ MergeJoin(movie_companies title movie_info cast_info movie_keyword)
 NestLoop(movie_companies title movie_info cast_info)
 NestLoop(movie_companies title movie_info)
 HashJoin(movie_companies title)
 IndexScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_companies title) movie_info) cast_info) movie_keyword)) */
select count(*) from movie_keyword,movie_info,cast_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id<27539 and movie_companies.company_type_id<2 and title.phonetic_code<16815 and title.season_nr=0 and title.imdb_index>6;

