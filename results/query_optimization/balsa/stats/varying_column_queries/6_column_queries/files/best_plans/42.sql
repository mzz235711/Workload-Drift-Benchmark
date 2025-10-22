/*+ HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CreationDate>='2010-08-01 06:53:28'::timestamp AND p.CreationDate<='2014-08-09 12:46:12'::timestamp AND u.DownVotes>=0;

