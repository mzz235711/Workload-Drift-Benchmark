/*+ HashJoin(b u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.ViewCount<=4277 AND p.AnswerCount<=6 AND p.CommentCount<=20 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND p.CreationDate<='2014-09-02 17:40:29'::timestamp AND u.DownVotes<=1;

