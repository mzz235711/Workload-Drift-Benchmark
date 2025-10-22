/*+ HashJoin(movie_keyword movie_companies title cast_info)
 MergeJoin(movie_companies title cast_info)
 HashJoin(title cast_info)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_keyword (movie_companies (title cast_info)))) */
select count(*) from movie_keyword,movie_companies,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>121 and title.phonetic_code>0 and title.production_year<127;

