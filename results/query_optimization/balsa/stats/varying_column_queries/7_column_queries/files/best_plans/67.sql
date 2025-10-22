/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 MergeJoin(p pl)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND p.ViewCount<=29020 AND p.AnswerCount<=10 AND p.CreationDate>='2010-07-20 00:47:45'::timestamp AND p.CreationDate<='2014-08-25 20:35:15'::timestamp AND b.Date>='2010-07-19 19:39:09'::timestamp AND b.Date<='2014-09-13 12:17:27'::timestamp;

