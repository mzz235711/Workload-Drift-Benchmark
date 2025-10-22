/*+ MergeJoin(pl p u)
 HashJoin(p u)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(u)
 Leading((pl (p u))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score>=-1 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-07-21 17:26:14'::timestamp AND u.Reputation=23 AND u.UpVotes<=19;

