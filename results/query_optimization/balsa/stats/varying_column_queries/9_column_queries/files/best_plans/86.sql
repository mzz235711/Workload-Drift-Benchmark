/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.ViewCount<=4442 AND p.CommentCount=0 AND u.Reputation>=1 AND u.Reputation<=168 AND u.Views>=0 AND u.Views<=217 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.CreationDate<='2014-08-11 15:28:06'::timestamp;

