/*+ MergeJoin(u pl p)
 HashJoin(pl p)
 IndexScan(u)
 SeqScan(pl)
 SeqScan(p)
 Leading((u (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.AnswerCount=0 AND p.CreationDate<='2014-09-07 15:42:50'::timestamp;

