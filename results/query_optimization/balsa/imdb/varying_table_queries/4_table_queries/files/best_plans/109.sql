/*+ HashJoin(cast_info movie_keyword title movie_companies)
 MergeJoin(movie_keyword title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info (movie_keyword (title movie_companies)))) */
select count(*) from movie_companies,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id=2 and cast_info.role_id=3 and movie_keyword.keyword_id<14210 and title.phonetic_code<11301;

