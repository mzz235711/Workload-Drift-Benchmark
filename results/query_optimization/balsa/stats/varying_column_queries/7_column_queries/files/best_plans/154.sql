/*+ HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-08-07 14:02:26'::timestamp AND u.Reputation<=108 AND u.DownVotes>=0 AND u.DownVotes<=0;

