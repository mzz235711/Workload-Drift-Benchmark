/*+ HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.ViewCount<=17429 AND p.AnswerCount<=5 AND u.Reputation>=1 AND u.Views<=16 AND u.DownVotes<=4 AND u.UpVotes>=0 AND u.CreationDate>='2010-07-27 11:31:20'::timestamp AND u.CreationDate<='2014-08-13 19:29:41'::timestamp;

