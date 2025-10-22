/*+ HashJoin(v c pl p)
 HashJoin(c pl p)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((v ((c pl) p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.CreationDate>='2010-07-20 15:01:21'::timestamp AND p.AnswerCount<=3 AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-10-19 15:02:42'::timestamp AND pl.CreationDate<='2014-08-04 09:02:01'::timestamp AND v.BountyAmount<=50;

