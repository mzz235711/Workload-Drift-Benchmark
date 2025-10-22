/*+ HashJoin(c pl u p v b)
 NestLoop(c pl u p v)
 MergeJoin(c pl u p)
 MergeJoin(pl u p)
 HashJoin(u p)
 SeqScan(c)
 IndexScan(pl)
 IndexScan(u)
 SeqScan(p)
 IndexScan(v)
 SeqScan(b)
 Leading((((c (pl (u p))) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-13 21:31:12'::timestamp AND p.FavoriteCount>=0 AND p.FavoriteCount<=10 AND p.CreationDate<='2014-09-02 16:39:54'::timestamp AND v.VoteTypeId=2 AND b.Date>='2011-03-14 10:41:08'::timestamp AND u.Reputation<=1981;

