/*+ HashJoin(movie_companies title)
 IndexScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.phonetic_code<16921;

