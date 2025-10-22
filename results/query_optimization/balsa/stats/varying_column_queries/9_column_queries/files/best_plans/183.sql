/*+ HashJoin(b c p u pl v)
 HashJoin(c p u pl v)
 HashJoin(c p u pl)
 HashJoin(p u pl)
 HashJoin(p u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(p)
 SeqScan(u)
 SeqScan(pl)
 SeqScan(v)
 Leading((b ((c ((p u) pl)) v))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.Score=0 AND p.ViewCount>=0 AND p.ViewCount<=2218 AND p.CommentCount<=8 AND p.FavoriteCount>=0 AND v.VoteTypeId=2 AND u.Views<=81 AND u.DownVotes<=0 AND u.UpVotes<=113;

