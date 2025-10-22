/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND p.CreationDate>='2010-08-19 05:56:06'::timestamp AND p.CreationDate<='2014-09-06 18:24:48'::timestamp AND u.UpVotes=0 AND u.CreationDate>='2011-06-20 18:04:47'::timestamp AND b.Date<='2014-09-13 15:45:32'::timestamp;

