/*+ HashJoin(movie_info movie_keyword title movie_companies)
 MergeJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (movie_keyword (title movie_companies)))) */
select count(*) from movie_info,movie_keyword,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>216 and movie_companies.company_type_id<2 and title.phonetic_code<16905;

