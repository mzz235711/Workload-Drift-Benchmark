/*+ MergeJoin(movie_companies title movie_keyword movie_info cast_info)
 MergeJoin(movie_companies title movie_keyword movie_info)
 MergeJoin(movie_companies title movie_keyword)
 MergeJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_keyword)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((((movie_companies title) movie_keyword) movie_info) cast_info)) */
select count(*) from movie_info,movie_keyword,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<47 and movie_companies.company_type_id>1 and cast_info.role_id=10 and title.imdb_index=0 and title.phonetic_code<8349 and title.production_year>117;

