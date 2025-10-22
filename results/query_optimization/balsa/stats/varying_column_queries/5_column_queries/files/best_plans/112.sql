/*+ HashJoin(b pl u p)
 HashJoin(pl u p)
 MergeJoin(u p)
 SeqScan(b)
 SeqScan(pl)
 IndexScan(u)
 SeqScan(p)
 Leading((b (pl (u p)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.ViewCount>=0 AND p.ViewCount<=10063 AND p.AnswerCount<=4 AND u.Views<=1245 AND u.UpVotes<=61;

