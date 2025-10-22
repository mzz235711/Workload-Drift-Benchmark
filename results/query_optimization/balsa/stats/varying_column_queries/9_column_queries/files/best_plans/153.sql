/*+ HashJoin(c p pl u b v)
 HashJoin(c p pl u b)
 HashJoin(c p pl u)
 HashJoin(c p pl)
 HashJoin(c p)
 IndexScan(c)
 IndexScan(p)
 SeqScan(pl)
 SeqScan(u)
 SeqScan(b)
 SeqScan(v)
 Leading((((((c p) pl) u) b) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.Score=0 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.CommentCount<=23 AND pl.CreationDate<='2014-08-02 01:46:12'::timestamp AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND b.Date>='2010-07-20 08:54:10'::timestamp AND u.Views>=0;

