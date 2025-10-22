/*+ HashJoin(b c u pl p)
 HashJoin(c u pl p)
 HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 SeqScan(pl)
 SeqScan(p)
 Leading((b (c (u (pl p))))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND c.Score=0 AND p.CommentCount>=0 AND p.CommentCount<=21 AND p.CreationDate>='2010-08-05 01:24:22'::timestamp AND b.Date>='2010-07-20 05:44:09'::timestamp AND b.Date<='2014-08-03 15:39:00'::timestamp;

