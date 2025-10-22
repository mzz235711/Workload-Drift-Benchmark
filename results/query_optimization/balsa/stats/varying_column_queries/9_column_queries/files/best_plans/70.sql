/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.FavoriteCount<=41 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes<=7 AND u.CreationDate<='2014-09-03 01:06:41'::timestamp AND b.Date<='2014-09-09 15:07:14'::timestamp;

