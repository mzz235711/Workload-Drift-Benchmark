/*+ MergeJoin(pl u p v)
 HashJoin(u p v)
 HashJoin(p v)
 IndexScan(pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((pl (u (p v)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.ViewCount>=0 AND p.ViewCount<=66972 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.FavoriteCount>=0 AND v.BountyAmount>=0 AND u.Reputation<=455 AND u.Views>=0 AND u.Views<=19 AND u.DownVotes>=0 AND u.DownVotes<=0;

