/*+ HashJoin(v u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND p.PostTypeId=1 AND p.AnswerCount<=4 AND p.CommentCount<=8 AND p.CreationDate>='2010-07-23 15:02:40'::timestamp AND p.CreationDate<='2014-09-02 13:20:56'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

