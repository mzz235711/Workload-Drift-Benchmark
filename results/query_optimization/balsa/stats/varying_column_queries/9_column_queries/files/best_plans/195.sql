/*+ HashJoin(v u p pl b ph)
 HashJoin(v u p pl b)
 HashJoin(v u p pl)
 HashJoin(v u p)
 HashJoin(v u)
 IndexScan(v)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 SeqScan(b)
 SeqScan(ph)
 Leading((((((v u) p) pl) b) ph)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.Score>=0 AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.CreationDate>='2010-08-02 05:16:40'::timestamp AND p.CreationDate<='2014-09-12 06:07:33'::timestamp AND ph.PostHistoryTypeId=2 AND u.Reputation>=1 AND u.Reputation<=487 AND u.DownVotes<=55;

