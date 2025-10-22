/*+ HashJoin(u pl p)
 MergeJoin(pl p)
 SeqScan(u)
 IndexScan(pl)
 IndexScan(p)
 Leading((u (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score<=17 AND p.AnswerCount<=6 AND u.Reputation<=128 AND u.CreationDate='2011-12-13 17:12:52'::timestamp;

