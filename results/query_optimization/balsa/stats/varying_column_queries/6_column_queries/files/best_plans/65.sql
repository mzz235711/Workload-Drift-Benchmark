/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-08-18 21:21:07'::timestamp AND p.AnswerCount<=3 AND p.CreationDate>='2010-07-20 05:21:14'::timestamp AND p.CreationDate<='2014-09-04 10:28:33'::timestamp AND u.DownVotes>=0;

