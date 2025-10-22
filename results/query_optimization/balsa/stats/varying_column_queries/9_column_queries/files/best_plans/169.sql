/*+ HashJoin(b u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND p.ViewCount<=8532 AND p.AnswerCount<=4 AND p.CommentCount<=15 AND u.Reputation>=1 AND u.Reputation<=406 AND u.Views<=66 AND u.UpVotes<=7 AND b.Date<='2014-09-08 01:44:36'::timestamp;

