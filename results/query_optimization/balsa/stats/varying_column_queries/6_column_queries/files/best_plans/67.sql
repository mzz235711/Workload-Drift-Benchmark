/*+ HashJoin(c pl p u b)
 HashJoin(c pl p u)
 HashJoin(pl p u)
 HashJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(u)
 SeqScan(b)
 Leading(((c ((pl p) u)) b)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND c.Score=0 AND p.CommentCount>=0 AND p.CommentCount<=21 AND p.CreationDate>='2010-08-05 01:24:22'::timestamp AND b.Date>='2010-07-20 05:44:09'::timestamp AND b.Date<='2014-08-03 15:39:00'::timestamp;

