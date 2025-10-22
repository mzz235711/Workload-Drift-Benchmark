/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 IndexScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.phonetic_code<16011 and title.kind_id<7;

