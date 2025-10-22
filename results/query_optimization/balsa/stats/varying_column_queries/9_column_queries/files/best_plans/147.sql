/*+ HashJoin(c pl p u)
 HashJoin(pl p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(u)
 Leading((c (pl (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.CreationDate>='2010-07-20 12:03:37'::timestamp AND p.Score>=-1 AND p.Score<=29 AND p.CreationDate>='2010-07-19 21:53:02'::timestamp AND p.CreationDate<='2014-09-07 18:19:50'::timestamp AND pl.LinkTypeId=1 AND u.Views=0 AND u.DownVotes>=0 AND u.DownVotes<=3;

