/*+ MergeJoin(cast_info title movie_companies movie_keyword)
 NestLoop(title movie_companies movie_keyword)
 MergeJoin(title movie_companies)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((cast_info ((title movie_companies) movie_keyword))) */
select count(*) from movie_companies,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id<2 and cast_info.nr_order>1 and title.production_year<120 and title.season_nr<2 and title.kind_id<7 and title.phonetic_code<8124;

