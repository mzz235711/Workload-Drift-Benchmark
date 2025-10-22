/*+ HashJoin(ph v c pl)
 HashJoin(c pl)
 HashJoin(ph v)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(c)
 IndexScan(pl)
 Leading(((ph v) (c pl))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-08-02 20:33:00'::timestamp AND c.CreationDate<='2014-09-12 16:21:58'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-03-15 22:12:37'::timestamp AND pl.CreationDate<='2014-07-29 13:13:06'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=50;

