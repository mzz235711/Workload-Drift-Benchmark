/*+ HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(u)
 IndexScan(pl)
 SeqScan(p)
 Leading((u (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score>=-1 AND p.Score<=26 AND p.AnswerCount<=3 AND p.FavoriteCount<=12 AND p.CreationDate>='2010-08-20 20:10:24'::timestamp AND pl.LinkTypeId=1 AND u.UpVotes>=0 AND u.UpVotes<=42 AND u.CreationDate<='2014-07-26 14:50:55'::timestamp;

