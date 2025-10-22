/*+ HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.CreationDate>='2010-07-27 11:04:27'::timestamp AND c.CreationDate<='2014-09-02 19:14:06'::timestamp AND p.PostTypeId=1 AND p.AnswerCount=0;

