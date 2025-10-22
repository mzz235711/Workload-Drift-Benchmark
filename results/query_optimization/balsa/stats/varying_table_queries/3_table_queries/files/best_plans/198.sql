/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 IndexScan(c)
 IndexScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND c.CreationDate>='2010-07-21 12:07:43'::timestamp AND c.CreationDate<='2014-09-11 08:52:09'::timestamp AND p.PostTypeId=1 AND p.CommentCount<=11 AND p.CreationDate>='2010-08-18 14:01:19'::timestamp AND pl.CreationDate>='2011-04-05 18:02:10'::timestamp AND pl.CreationDate<='2014-08-10 18:56:29'::timestamp;

