/*+ HashJoin(b c p pl u v)
 HashJoin(c p pl u v)
 HashJoin(c p pl u)
 HashJoin(p pl u)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 SeqScan(v)
 Leading((b ((c ((p pl) u)) v))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.Score=1 AND c.CreationDate>='2010-07-20 11:07:42'::timestamp AND p.Score<=17 AND p.CommentCount>=0 AND p.CommentCount<=12 AND pl.CreationDate<='2014-08-21 12:54:28'::timestamp AND v.VoteTypeId=2 AND u.Views>=0 AND u.DownVotes<=0;

