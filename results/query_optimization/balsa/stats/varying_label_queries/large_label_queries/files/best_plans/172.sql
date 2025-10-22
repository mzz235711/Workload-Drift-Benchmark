/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.CreationDate>='2010-07-20 14:44:45'::timestamp AND c.CreationDate<='2014-08-26 15:24:15'::timestamp AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=30 AND p.CommentCount>=0 AND p.CommentCount<=14;

